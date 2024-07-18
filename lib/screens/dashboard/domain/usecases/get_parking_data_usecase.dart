import 'package:wemolo_parking/core/utils/type_defs.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/request/request_body_parking/request_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/domain/repositories/dashboard_repository.dart';

class GetParkingDataUseCase {
  final DashboardRepository dashboardRepository;
  GetParkingDataUseCase(this.dashboardRepository);
  ResultFuture<ResponseBodyParking> getParkingData(
          RequestBodyParking requestBodyParking) =>
      dashboardRepository.getParkingData(requestBodyParking);
 
}
