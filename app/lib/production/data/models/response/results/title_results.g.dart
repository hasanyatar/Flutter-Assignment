// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TitleResults _$$_TitleResultsFromJson(Map<String, dynamic> json) =>
    _$_TitleResults(
      id: json['id'] as String?,
      primaryImage: json['primaryImage'] == null
          ? null
          : PrimaryImage.fromJson(json['primaryImage'] as Map<String, dynamic>),
      titleType: json['titleType'] == null
          ? null
          : TitleType.fromJson(json['titleType'] as Map<String, dynamic>),
      titleText: json['titleText'] == null
          ? null
          : TitleText.fromJson(json['titleText'] as Map<String, dynamic>),
      releaseYear: json['releaseYear'] == null
          ? null
          : ReleaseYear.fromJson(json['releaseYear'] as Map<String, dynamic>),
      releaseDate: json['releaseDate'] == null
          ? null
          : ReleaseDate.fromJson(json['releaseDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TitleResultsToJson(_$_TitleResults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'primaryImage': instance.primaryImage,
      'titleType': instance.titleType,
      'titleText': instance.titleText,
      'releaseYear': instance.releaseYear,
      'releaseDate': instance.releaseDate,
    };
