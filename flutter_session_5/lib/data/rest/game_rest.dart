import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_session_5/domain/model/game/game_model.dart';

part 'game_rest.g.dart';

@RestApi(baseUrl: 'https://www.freetogame.com/api')
abstract class GameRest {
  factory GameRest(Dio dio, {String baseUrl}) = _GameRest;

  @GET('/games')
  Future<List<GameModel>> getGames({
    @Query('platform') required String platform,
    @Query('category') required String category,
    @Query('sort-by') required String sortBy,
  });
}
