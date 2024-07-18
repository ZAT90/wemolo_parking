// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../screens/dashboard/data/data_sources/dashboard_remote_data_source.dart'
    as _i7;
import '../../screens/dashboard/data/repositories/dashboard_repository_impl.dart'
    as _i9;
import '../../screens/dashboard/domain/repositories/dashboard_repository.dart'
    as _i8;
import '../../screens/dashboard/domain/usecases/get_distinct_data_usecase.dart'
    as _i4;
import '../../screens/dashboard/domain/usecases/get_parking_data_usecase.dart'
    as _i3;
import '../../screens/dashboard/presentation/blocs/dashboard/dashboard_bloc.dart'
    as _i5;
import '../network/network_service.dart' as _i6;
import 'injection.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.GetParkingDataUseCase>(() => registerModule.getPostsUseCase);
    gh.factory<_i4.GetDistinctDataUseCase>(
        () => registerModule.getDistinctDataUseCase);
    gh.factory<_i5.DashboardBloc>(() => registerModule.dashboardBloc);
    gh.singleton<_i6.NetworkService>(() => _i6.NetworkService());
    gh.lazySingleton<_i7.DashboardRemoteDataSource>(
        () => _i7.DashboardRemoteDataSource(gh<_i6.NetworkService>()));
    gh.lazySingleton<_i8.DashboardRepository>(
        () => _i9.DashboardRepositoryImpl(gh<_i7.DashboardRemoteDataSource>()));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
