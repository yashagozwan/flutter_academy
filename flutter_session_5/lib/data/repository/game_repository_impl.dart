import 'package:flutter_session_5/data/source/remote/game_remote_data_source.dart';
import 'package:flutter_session_5/domain/model/filter/filter_model.dart';
import 'package:flutter_session_5/domain/model/game/game_model.dart';
import 'package:flutter_session_5/domain/repository/game_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GameRepository)
class GameRepositoryImpl implements GameRepository {
  final GameRemoteDataSource _remote;

  GameRepositoryImpl(this._remote);

  @override
  Future<List<GameModel>> getGames(FilterModel filter) {
    return _remote.getGames(filter);
  }
}
