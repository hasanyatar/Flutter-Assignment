import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'titles.g.dart';
part 'titles.freezed.dart';

@freezed
class Titles with _$Titles {
  const factory Titles({
    @JsonKey(name: 'page') String? page,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'entries') int? titleType,
    @JsonKey(name: 'results') List<TitleResults>? results,
  }) = _Titles;

  factory Titles.fromJson(Map<String, dynamic> json) => _$TitlesFromJson(json);
}
