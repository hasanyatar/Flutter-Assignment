import 'package:app/production/data/models/response/primary_image/primary_image.dart';
import 'package:app/production/data/models/response/release_date/release_date.dart';
import 'package:app/production/data/models/response/release_year/release_year.dart';
import 'package:app/production/data/models/response/title_text/title_text.dart';
import 'package:app/production/data/models/response/title_type/title_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'title_results.g.dart';
part 'title_results.freezed.dart';

@freezed
class TitleResults with _$TitleResults {
  const factory TitleResults({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'primaryImage') PrimaryImage? primaryImage,
    @JsonKey(name: 'titleType') TitleType? titleType,
    @JsonKey(name: 'titleText') TitleText? titleText,
    @JsonKey(name: 'releaseYear') ReleaseYear? releaseYear,
    @JsonKey(name: 'releaseDate') ReleaseDate? releaseDate,
  }) = _TitleResults;

  factory TitleResults.fromJson(Map<String, dynamic> json) => _$TitleResultsFromJson(json);
}
