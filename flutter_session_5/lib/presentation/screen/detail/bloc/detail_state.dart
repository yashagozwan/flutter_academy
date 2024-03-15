import 'package:flutter_session_5/data/constant/status.dart';
import 'package:flutter_session_5/domain/model/game/game_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(Status.initial) Status status,
    @Default(GameModel()) GameModel game,
  }) = _DetailState;
}
