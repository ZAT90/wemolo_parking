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
    as _i6;
import '../../screens/dashboard/data/repositories/dashboard_repository_impl.dart'
    as _i8;
import '../../screens/dashboard/domain/repositories/dashboard_repository.dart'
    as _i7;
import '../../screens/dashboard/domain/usecases/get_parking_data_usecase.dart'
    as _i3;
import '../../screens/dashboard/presentation/blocs/dashboard/dashboard_bloc.dart'
    as _i4;
import '../network/network_service.dart' as _i5;
import 'injection.dart' as _i9;

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
    gh.factory<_i4.DashboardBloc>(() => registerModule.dashboardBloc);
    gh.singleton<_i5.NetworkService>(() => _i5.NetworkService());
    gh.lazySingleton<_i6.DashboardRemoteDataSource>(
        () => _i6.DashboardRemoteDataSource(gh<_i5.NetworkService>()));
    gh.lazySingleton<_i7.DashboardRepository>(
        () => _i8.DashboardRepositoryImpl(gh<_i6.DashboardRemoteDataSource>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
