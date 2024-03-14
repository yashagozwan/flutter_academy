import 'package:flutter_session_4/model/game_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'game_api.g.dart';

@RestApi(baseUrl: "https://www.freetogame.com/api/")
abstract class GameApi {
  factory GameApi(Dio dio, {String baseUrl}) = _GameApi;

  @GET("/games")
  Future<List<GameModel>> getGames({
    @Query('platform') String platform = 'browser',
    @Query('category') String category = 'mmorpg',
    @Query('sort-by') String sortBy = 'release-date',
  });
}
