import 'package:injectable/injectable.dart';
import 'package:wemolo_parking/core/constants/api_constants.dart';
import 'package:wemolo_parking/core/network/network_service.dart';
import 'package:wemolo_parking/core/utils/helpers.dart';
import 'package:wemolo_parking/core/utils/logger.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/request/request_body_distincts/request_body_distincts.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/request/request_body_parking/request_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_distincts/response_body_distincts.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';

@lazySingleton
class DashboardRemoteDataSource {
  final NetworkService networkService;
  DashboardRemoteDataSource(this.networkService);
  Future<ResponseBodyParking> getParkingData(
      RequestBodyParking requestBodyParking) async {
    RequestBodyParking request =
        requestBodyParking.copyWith(query: ApiConstants.parkingListQuery);

    logger.d('request before send: $request');
    final networkResponse =
        await networkService.post(path: '', requestBody: request);
    logger.d('networkResponse: $networkResponse');
    final data = await handleNetworkResponse(networkResponse);
    return ResponseBodyParking.fromJson(data);
  }

  Future<ResponseBodyDistincts> getDistinctData() async {
    RequestBodyDisticts request =
        const RequestBodyDisticts(query: ApiConstants.distinctQuery);

    logger.d('request before send: $request');
    final networkResponse =
        await networkService.post(path: '', requestBody: request);
    logger.d('networkResponse: $networkResponse');
    final data = await handleNetworkResponse(networkResponse);
    return ResponseBodyDistincts.fromJson(data);
  }
}
