import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel({
    @Default('') String platform,
    @Default('') String category,
    @Default('') String sortBy,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}
