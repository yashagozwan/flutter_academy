import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

@freezed
class GameModel with _$GameModel {
  const factory GameModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String thumbnail,
    @Default('') @JsonKey(name: 'short_description') String shortDescription,
    @Default('') @JsonKey(name: 'game_url') String gameUrl,
    @Default('') String genre,
    @Default('') String platform,
    @Default('') String publisher,
    @Default('') String developer,
    @Default('') @JsonKey(name: 'release_date') String releaseDate,
    @Default('') @JsonKey(name: 'freetogame_profile_url') String freeToGameProfileUrl,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}
