import 'package:wemolo_parking/core/utils/type_defs.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/request/request_body_parking/request_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_distincts/response_body_distincts.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';

abstract class DashboardRepository {
  ResultFuture<ResponseBodyParking> getParkingData(
      RequestBodyParking requestBodyParking);
  ResultFuture<ResponseBodyDistincts> getDistinctData();
}
