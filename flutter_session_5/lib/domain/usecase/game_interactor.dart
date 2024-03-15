import 'package:flutter_session_5/domain/model/filter/filter_model.dart';
import 'package:flutter_session_5/domain/model/game/game_model.dart';
import 'package:flutter_session_5/domain/repository/game_repository.dart';
import 'package:flutter_session_5/domain/usecase/game_usecase.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GameUseCase)
class GameInteractor implements GameUseCase {
  final GameRepository _repository;

  GameInteractor(this._repository);

  @override
  Future<List<GameModel>> getGames(FilterModel filter) {
    return _repository.getGames(filter);
  }
}
