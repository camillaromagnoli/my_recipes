// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/adapters/network_adapter.dart' as _i1048;
import '../packages/ingredients/data/repositories/ingredients_repository_impl.dart'
    as _i449;
import '../packages/ingredients/data/services/ingredients_service_impl.dart'
    as _i365;
import '../packages/ingredients/domain/repositories/ingredients_repository.dart'
    as _i432;
import '../packages/ingredients/domain/services/ingredients_service.dart'
    as _i794;
import '../packages/ingredients/domain/usecase/get_ingredients_usecase.dart'
    as _i494;
import '../packages/ingredients/presentation/bloc/ingredients_bloc.dart'
    as _i267;
import 'dependencies.dart' as _i372;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i1048.NetworkAdapter>(
        () => _i1048.NetworkAdapterImpl(gh<_i361.Dio>()));
    gh.factory<_i794.IngredientsService>(() => _i365.IngredientsServiceImpl(
        networkAdapter: gh<_i1048.NetworkAdapter>()));
    gh.factory<_i432.IngredientsRepository>(() =>
        _i449.IngredientsRepositoryImpl(
            ingredientsService: gh<_i794.IngredientsService>()));
    gh.factory<_i494.GetIngredientsUseCase>(
        () => _i494.GetSubMenusUseCaseImpl(gh<_i432.IngredientsRepository>()));
    gh.factory<_i267.IngredientsBloc>(() => _i267.IngredientsBloc(
        getIngredientsUseCase: gh<_i494.GetIngredientsUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i372.RegisterModule {}
