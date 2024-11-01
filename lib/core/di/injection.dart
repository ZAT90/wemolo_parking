import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wemolo_parking/core/di/injection.config.dart';
import 'package:wemolo_parking/screens/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:wemolo_parking/screens/dashboard/domain/usecases/get_distinct_data_usecase.dart';
import 'package:wemolo_parking/screens/dashboard/domain/usecases/get_parking_data_usecase.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/blocs/dashboard/dashboard_bloc.dart';

final GetIt getIt = GetIt.instance;
@InjectableInit(
    generateForDir: ['lib'],
    initializerName: 'init', // Specify the directory for generation
    preferRelativeImports: true,
    asExtension: true)
void setupInjection() => getIt.init();

@module
abstract class RegisterModule {
  // @lazySingleton

  @factoryMethod
  // Register all use cases
  GetParkingDataUseCase get getPostsUseCase =>
      GetParkingDataUseCase(getIt<DashboardRepository>());
  GetDistinctDataUseCase get getDistinctDataUseCase =>
      GetDistinctDataUseCase(getIt<DashboardRepository>());
  // Register All Blocs
  DashboardBloc get dashboardBloc => DashboardBloc(
      getPostsUseCase, getDistinctDataUseCase);
}
