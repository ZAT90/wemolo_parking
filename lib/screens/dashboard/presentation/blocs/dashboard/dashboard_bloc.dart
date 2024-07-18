import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wemolo_parking/core/utils/logger.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/request/request_body_parking/request_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_distincts/response_body_distincts.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/domain/usecases/get_distinct_data_usecase.dart';
import 'package:wemolo_parking/screens/dashboard/domain/usecases/get_parking_data_usecase.dart';

part 'dashboard_state.dart';
part 'dashboard_event.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetParkingDataUseCase getParkingDataUseCase;
  final GetDistinctDataUseCase getDistinctDatauseCase;
  int offset = 0;
  int limit = 5;
  List<GetAllParkingLot> summaryParkingList = [];
  List<String> choicesOfUser = ['good', 'bad'];
  List<DistinctStatus> distinctStatuses = [];
  List<DistinctType> distinctTypes = [];
  List<String> selectedChoiceOfuser = [];
  List<DistinctStatus> selectedDistinctStatuses = [];
  List<DistinctType> selectedDistinctTypes = [];
  DashboardBloc(this.getParkingDataUseCase, this.getDistinctDatauseCase)
      : super(const DashboardState.initial()) {
    on<DashboardEvent>((events, emit) async {
      await events.when(
        callingParkingData: () async {
          emit(const DashboardState.initial());
          final parkingData = await getParkingDataUseCase.getParkingData(
              RequestBodyParking(
                  variables: Variables(limit: limit, offset: offset)));
          parkingData.fold(
              (error) => null,
              (respCarPark) => emit(DashboardState.loadParkingData(
                  getParkingList: respCarPark.data?.getAllParkingLots)));
          // parkingData.fold
        },
        addToSummary: (GetAllParkingLot parkinglot) async {
          summaryParkingList.add(parkinglot);
          await processFilteredSummary(emit);
        },
        callingDistinctData: () async {
          logger.d('selectedChoiceOfuser: $selectedChoiceOfuser');
          emit(const DashboardState.loadDistinctInit());
          final distinctData = await getDistinctDatauseCase.getDistinctData();

          distinctData.fold((error) => null, (respDistinct) {
            distinctStatuses.clear();
            distinctStatuses.addAll(respDistinct.data!.distinctStatuses!);
            distinctTypes.clear();
            distinctTypes.addAll(respDistinct.data!.distinctTypes!);

            emit(DashboardState.loadDistinctData(
                distinctStatuses: distinctStatuses,
                distinctTypes: distinctTypes));
          });
        },
        applyFilter: () async => await processFilteredSummary(emit),
      );
    });
  }

  Future<void> processFilteredSummary(Emitter<DashboardState> emit) async {
    logger.d('let us apply filter');
    logger.d('selectedChoiceOfuser: $selectedChoiceOfuser');
    logger.d('selectedDistinctStatuses: $selectedDistinctStatuses');
    logger.d('selectedDistinctTypes: $selectedDistinctTypes');
    List<GetAllParkingLot> summaryListToFilter = [...summaryParkingList];
    //  List<GetAllParkingLot> filteredList = [];
    if (selectedChoiceOfuser.length == 1) {
      if (selectedChoiceOfuser.contains('good'.toLowerCase())) {
        summaryListToFilter =
            summaryListToFilter.where((element) => element.isLiked!).toList();
      } else if (selectedChoiceOfuser.contains('bad'.toLowerCase())) {
        summaryListToFilter =
            summaryListToFilter.where((element) => !element.isLiked!).toList();
      }
    }
    if (selectedDistinctStatuses.isNotEmpty) {
      logger.d('summaryList inside if: $summaryListToFilter');
      summaryListToFilter = summaryListToFilter.where((element) {
        return selectedDistinctStatuses.any((dStatus) {
          return dStatus.status!.toLowerCase() == element.status!.toLowerCase();
        });
      }).toList();
    }
    if (selectedDistinctTypes.isNotEmpty) {
      summaryListToFilter = summaryListToFilter.where((element) {
        return selectedDistinctTypes.any((dType) {
          return dType.type!.toLowerCase() == element.type!.toLowerCase();
        });
      }).toList();
    }
    emit(DashboardState.loadSummaryListAfterAdd(
        getParkingList: summaryListToFilter));
  }
}
