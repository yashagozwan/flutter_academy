// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_session_5/core/di/register_module.dart' as _i16;
import 'package:flutter_session_5/data/api/game_api.dart' as _i3;
import 'package:flutter_session_5/data/repository/game_repository_impl.dart'
    as _i12;
import 'package:flutter_session_5/data/rest/game_rest.dart' as _i5;
import 'package:flutter_session_5/data/service/navigation_service.dart' as _i7;
import 'package:flutter_session_5/data/source/remote/game_remote_data_source.dart'
    as _i9;
import 'package:flutter_session_5/data/source/remote/game_remote_data_source_impl.dart'
    as _i10;
import 'package:flutter_session_5/domain/repository/game_repository.dart'
    as _i11;
import 'package:flutter_session_5/domain/usecase/game_interactor.dart' as _i14;
import 'package:flutter_session_5/domain/usecase/game_usecase.dart' as _i13;
import 'package:flutter_session_5/presentation/screen/detail/bloc/detail_bloc.dart'
    as _i8;
import 'package:flutter_session_5/presentation/screen/home/bloc/home_bloc.dart'
    as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.lazySingleton<_i3.ClientInterceptor>(() => _i3.ClientInterceptor());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i3.GameApi>(() => _i3.GameApi(
          gh<_i4.Dio>(),
          gh<_i3.ClientInterceptor>(),
        ));
    gh.lazySingleton<_i5.GameRest>(() => registerModule.getRest);
    gh.factory<_i6.GlobalKey<_i6.NavigatorState>>(
        () => registerModule.navigatorKey);
    gh.lazySingleton<_i7.NavigationService>(
        () => _i7.NavigationService(gh<_i6.GlobalKey<_i6.NavigatorState>>()));
    gh.lazySingleton<_i8.DetailBloc>(
        () => _i8.DetailBloc(gh<_i7.NavigationService>()));
    gh.lazySingleton<_i9.GameRemoteDataSource>(
        () => _i10.GameRemoteDataSourceImpl(gh<_i5.GameRest>()));
    gh.lazySingleton<_i11.GameRepository>(
        () => _i12.GameRepositoryImpl(gh<_i9.GameRemoteDataSource>()));
    gh.lazySingleton<_i13.GameUseCase>(
        () => _i14.GameInteractor(gh<_i11.GameRepository>()));
    gh.lazySingleton<_i15.HomeBloc>(
        () => _i15.HomeBloc(gh<_i13.GameUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
