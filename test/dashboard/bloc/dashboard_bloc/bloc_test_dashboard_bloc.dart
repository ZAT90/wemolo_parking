import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/blocs/dashboard/dashboard_bloc.dart';

import 'dashboard_bloc_test_mocks.mocks.dart';

void main() {
  late MockGetParkingDataUseCase mockGetParkingDataUseCase;
  late DashboardBloc dashboardBloc;

  setUp(() {
    mockGetParkingDataUseCase = MockGetParkingDataUseCase();
    dashboardBloc = DashboardBloc(mockGetParkingDataUseCase);
  });

  tearDown(() {
    dashboardBloc.close();
  });

  blocTest<DashboardBloc, DashboardState>(
    'emits [DashboardState.loadSummaryListAfterAdd] when addToSummary event is added',
    build: () => dashboardBloc,
    act: (bloc) {
      final parkingLot = GetAllParkingLot(
        id: "1",
        name: "Lot 1",
        address: "Address 1",
        status: "active",
        size: 50,
        liveDate: DateTime.tryParse("2021-01-01"),
        type: "type1",
        image: "image_url",
      );
      bloc.add(DashboardEvent.addToSummary(parkinglot: parkingLot));
    },
    expect: () => [
      DashboardState.loadSummaryListAfterAdd(
        getParkingList: [
          GetAllParkingLot(
            id: "1",
            name: "Lot 1",
            address: "Address 1",
            status: "active",
            size: 50,
            liveDate: DateTime.tryParse("2021-01-01"),
            type: "type1",
            image: "image_url",
          )
        ],
      ),
    ],
  );
}
