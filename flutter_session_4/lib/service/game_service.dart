import 'package:flutter_session_4/api/game_api.dart';
import 'package:flutter_session_4/model/game_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GameService {
  final GameApi _api;

  GameService(this._api);

  Future<List<GameModel>> getGames() => _api.getGames();
}
