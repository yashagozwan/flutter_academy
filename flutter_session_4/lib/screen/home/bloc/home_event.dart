import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
  toJson: false,
  fromJson: false,
  makeCollectionsUnmodifiable: true,
  copyWith: false,
  unionValueCase: FreezedUnionCase.none,
)
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = HomeInitial;

  const factory HomeEvent.started() = HomeStarted;
}
