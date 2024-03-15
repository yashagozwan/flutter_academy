import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_5/data/api/game_api.dart';
import 'package:flutter_session_5/core/di/di.dart';
import 'package:flutter_session_5/data/rest/game_rest.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  GameRest get getRest => GameRest(getIt<GameApi>().client);

  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();
}
