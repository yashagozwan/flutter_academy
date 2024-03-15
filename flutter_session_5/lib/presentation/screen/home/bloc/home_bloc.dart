import 'package:dio/dio.dart';
import 'package:flutter_session_5/data/constant/status.dart';
import 'package:flutter_session_5/domain/model/filter/filter_model.dart';
import 'package:flutter_session_5/domain/usecase/game_usecase.dart';
import 'package:flutter_session_5/presentation/screen/home/bloc/home_state.dart';
import 'package:injectable/injectable.dart';

import 'home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GameUseCase _gameUseCase;

  HomeBloc(this._gameUseCase) : super(const HomeState()) {
    on<HomeInitial>(_initial);
    on<HomeStarted>(_started);
  }

  void _initial(HomeInitial event, Emitter<HomeState> emit) =>
      emit(const HomeState());

  void _started(HomeStarted event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    try {
      const filter = FilterModel(
        category: 'mmorpg',
        platform: 'browser',
        sortBy: 'release-date',
      );

      final games = await _gameUseCase.getGames(filter);
      emit(state.copyWith(status: Status.success, games: games));
    } on DioException catch (e) {
      emit(state.copyWith(status: Status.failure, message: '${e.message}'));
    } catch (e) {
      emit(state.copyWith(status: Status.failure, message: '$e'));
    }
  }
}
