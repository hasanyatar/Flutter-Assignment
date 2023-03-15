import 'package:freezed_annotation/freezed_annotation.dart';
part 'release_date.g.dart';
part 'release_date.freezed.dart';

@freezed
class ReleaseDate with _$ReleaseDate {
  const factory ReleaseDate({
    @JsonKey(name: 'day') int? day,
    @JsonKey(name: 'month') int? month,
    @JsonKey(name: 'year') int? year,
    @JsonKey(name: '__typename') String? typeName,
  }) = _ReleaseDate;

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => _$ReleaseDateFromJson(json);
}
