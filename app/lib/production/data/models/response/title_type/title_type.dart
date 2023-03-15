import 'package:freezed_annotation/freezed_annotation.dart';
part 'title_type.g.dart';
part 'title_type.freezed.dart';

@freezed
class TitleType with _$TitleType {
  const factory TitleType({
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'isSeries') bool? isSeries,
    @JsonKey(name: 'isEpisode') bool? isEpisode,
    @JsonKey(name: '__typename') String? typeName,
  }) = _TitleType;

  factory TitleType.fromJson(Map<String, dynamic> json) => _$TitleTypeFromJson(json);
}
