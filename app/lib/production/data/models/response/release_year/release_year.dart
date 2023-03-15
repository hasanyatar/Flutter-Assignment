import 'package:freezed_annotation/freezed_annotation.dart';
part 'release_year.g.dart';
part 'release_year.freezed.dart';

@freezed
class ReleaseYear with _$ReleaseYear {
  const factory ReleaseYear({
    @JsonKey(name: 'year') int? day,
    @JsonKey(name: 'endYear') int? month,
    @JsonKey(name: '__typename') String? typeName,
  }) = _ReleaseYear;

  factory ReleaseYear.fromJson(Map<String, dynamic> json) => _$ReleaseYearFromJson(json);
}
