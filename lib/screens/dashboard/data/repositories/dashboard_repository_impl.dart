import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wemolo_parking/core/utils/error/api_error_message.dart';
import 'package:wemolo_parking/core/utils/type_defs.dart';
import 'package:wemolo_parking/screens/dashboard/data/data_sources/dashboard_remote_data_source.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/request/request_body_parking/request_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_distincts/response_body_distincts.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/domain/repositories/dashboard_repository.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource dashboardRemoteDataSource;
  DashboardRepositoryImpl(this.dashboardRemoteDataSource);
  @override
  ResultFuture<ResponseBodyParking> getParkingData(
      RequestBodyParking requestBodyParking) async {
    try {
      return Right(
          await dashboardRemoteDataSource.getParkingData(requestBodyParking));
    } on ApiErrorMessage catch (ex) {
      return Left(ApiErrorMessage(errorMessage: ex.errorMessage));
    }
  }

  @override
  ResultFuture<ResponseBodyDistincts> getDistinctData() async {
    try {
      return Right(await dashboardRemoteDataSource.getDistinctData());
    } on ApiErrorMessage catch (ex) {
      return Left(ApiErrorMessage(errorMessage: ex.errorMessage));
    }
  }
}
