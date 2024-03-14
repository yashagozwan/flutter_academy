import 'package:dio/dio.dart';
import 'package:flutter_session_4/api/game_api.dart';
import 'package:flutter_session_4/client/game_client.dart';
import 'package:flutter_session_4/di/di.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  GameApi get gameApi => GameApi(getIt<GameClient>().client);
}
