import 'package:flutter_session_5/data/constant/status.dart';
import 'package:flutter_session_5/domain/model/game/game_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.initial) Status status,
    @Default([]) List<GameModel> games,
    @Default('') String message,
  }) = _HomeState;
}
