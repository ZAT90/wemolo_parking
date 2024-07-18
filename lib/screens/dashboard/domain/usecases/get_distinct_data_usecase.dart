import 'package:wemolo_parking/core/utils/type_defs.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_distincts/response_body_distincts.dart';
import 'package:wemolo_parking/screens/dashboard/domain/repositories/dashboard_repository.dart';

class GetDistinctDataUseCase {
  final DashboardRepository dashboardRepository;
  GetDistinctDataUseCase(this.dashboardRepository);
  ResultFuture<ResponseBodyDistincts> getDistinctData() =>
      dashboardRepository.getDistinctData();
}
