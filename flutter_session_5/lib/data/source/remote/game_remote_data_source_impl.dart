import 'package:dio/dio.dart';
import 'package:flutter_session_5/data/rest/game_rest.dart';
import 'package:flutter_session_5/data/source/remote/game_remote_data_source.dart';
import 'package:flutter_session_5/domain/model/filter/filter_model.dart';
import 'package:flutter_session_5/domain/model/game/game_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GameRemoteDataSource)
class GameRemoteDataSourceImpl implements GameRemoteDataSource {
  final GameRest _rest;

  GameRemoteDataSourceImpl(this._rest);

  @override
  Future<List<GameModel>> getGames(FilterModel filter) {
    try {
      return _rest.getGames(
        platform: filter.platform,
        category: filter.category,
        sortBy: filter.sortBy,
      );
    } on DioException {
      rethrow;
    }
  }
}
