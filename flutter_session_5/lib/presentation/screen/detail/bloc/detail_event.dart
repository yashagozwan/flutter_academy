import 'package:flutter_session_5/domain/model/game/game_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_event.freezed.dart';

@freezed
abstract class DetailEvent with _$DetailEvent {
  const factory DetailEvent.initial() = DetailInitial;

  const factory DetailEvent.started({
    required final GameModel game,
  }) = DetailStarted;

  const factory DetailEvent.gameDetail({
    required final GameModel game,
  }) = DetailGameDetail;
}
