// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_session_4/api/game_api.dart' as _i4;
import 'package:flutter_session_4/client/game_client.dart' as _i7;
import 'package:flutter_session_4/di/register_module.dart' as _i9;
import 'package:flutter_session_4/screen/home/bloc/home_bloc.dart' as _i8;
import 'package:flutter_session_4/service/game_service.dart' as _i5;
import 'package:flutter_session_4/util/logger.dart' as _i6;
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
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.GameApi>(() => registerModule.gameApi);
    gh.lazySingleton<_i5.GameService>(() => _i5.GameService(gh<_i4.GameApi>()));
    gh.lazySingleton<_i6.Logger>(() => _i6.Logger());
    gh.lazySingleton<_i7.ClientInterceptor>(
        () => _i7.ClientInterceptor(gh<_i6.Logger>()));
    gh.lazySingleton<_i7.GameClient>(() => _i7.GameClient(
          gh<_i3.Dio>(),
          gh<_i7.ClientInterceptor>(),
        ));
    gh.lazySingleton<_i8.HomeBloc>(() => _i8.HomeBloc(
          gh<_i5.GameService>(),
          gh<_i6.Logger>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
