import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'titles_request.g.dart';

@JsonSerializable()
class TitlesRequest extends Equatable {
  @JsonKey(name: 'title_type')
  final String? titleType;
  @JsonKey(name: 'genre')
  final String? genre;
  @JsonKey(name: 'list')
  final String? list;
  @JsonKey(name: 'sort')
  final String? sort;
  @JsonKey(name: 'limit')
  final int? limit;
  @JsonKey(name: 'end_year')
  final int? endYear;
  @JsonKey(name: 'year')
  final int? year;
  @JsonKey(name: 'info')
  final String? info;
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'start_year')
  final int? startYear;

  const TitlesRequest(
      {this.titleType,
      this.genre,
      this.list,
      this.sort,
      this.limit,
      this.endYear,
      this.year,
      this.info,
      this.page,
      this.startYear});

  @override
  List<Object?> get props =>
      [titleType, genre, list, sort, limit, endYear, year, info, page, startYear];

  Map<String, dynamic> toJson() => _$TitlesRequestToJson(this);
}
