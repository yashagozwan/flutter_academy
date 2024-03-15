import 'package:flutter_session_5/domain/model/filter/filter_model.dart';
import 'package:flutter_session_5/domain/model/game/game_model.dart';

abstract class GameRepository {
  Future<List<GameModel>> getGames(FilterModel filter);
}
