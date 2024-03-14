import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_session_4/constant/status.dart';
import 'package:flutter_session_4/service/game_service.dart';
import 'package:flutter_session_4/util/logger.dart';
import 'package:injectable/injectable.dart';
import '../home.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GameService _gameService;
  final Logger _logger;

  HomeBloc(
    this._gameService,
    this._logger,
  ) : super(const HomeState()) {
    on<HomeInitial>(_initial);
    on<HomeStarted>(_started);
  }

  void _initial(HomeInitial event, Emitter<HomeState> emit) =>
      _resetState(emit);

  void _resetState(Emitter<HomeState> emit) => emit(const HomeState());

  void _started(HomeStarted event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    try {
      final games = await _gameService.getGames();
      emit(state.copyWith(status: Status.success, games: games));
    } on DioException catch (e) {
      emit(state.copyWith(status: Status.failure, message: '${e.message}'));
      _logger.d(e.message);
      _logger.d(e.response);
    } catch (e) {
      emit(state.copyWith(status: Status.failure, message: '$e'));
    }
  }
}
