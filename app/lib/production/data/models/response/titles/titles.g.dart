// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'titles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Titles _$$_TitlesFromJson(Map<String, dynamic> json) => _$_Titles(
      page: json['page'] as String?,
      next: json['next'] as String?,
      titleType: json['entries'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TitleResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TitlesToJson(_$_Titles instance) => <String, dynamic>{
      'page': instance.page,
      'next': instance.next,
      'entries': instance.titleType,
      'results': instance.results,
    };
