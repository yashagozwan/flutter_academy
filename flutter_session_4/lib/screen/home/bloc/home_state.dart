import 'package:flutter_session_4/constant/status.dart';
import 'package:flutter_session_4/model/game_model.dart';
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
