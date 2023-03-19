// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'titles_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitlesRequest _$TitlesRequestFromJson(Map<String, dynamic> json) =>
    TitlesRequest(
      titleType: json['title_type'] as String?,
      genre: json['genre'] as String?,
      list: json['list'] as String?,
      sort: json['sort'] as String?,
      limit: json['limit'] as int?,
      endYear: json['end_year'] as int?,
      year: json['year'] as int?,
      info: json['info'] as String?,
      page: json['page'] as int?,
      startYear: json['start_year'] as int?,
    );

Map<String, dynamic> _$TitlesRequestToJson(TitlesRequest instance) =>
    <String, dynamic>{
      'title_type': instance.titleType,
      'genre': instance.genre,
      'list': instance.list,
      'sort': instance.sort,
      'limit': instance.limit,
      'end_year': instance.endYear,
      'year': instance.year,
      'info': instance.info,
      'page': instance.page,
      'start_year': instance.startYear,
    };
