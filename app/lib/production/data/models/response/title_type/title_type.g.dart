// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TitleType _$$_TitleTypeFromJson(Map<String, dynamic> json) => _$_TitleType(
      text: json['text'] as String?,
      id: json['id'] as String?,
      isSeries: json['isSeries'] as bool?,
      isEpisode: json['isEpisode'] as bool?,
      typeName: json['__typename'] as String?,
    );

Map<String, dynamic> _$$_TitleTypeToJson(_$_TitleType instance) =>
    <String, dynamic>{
      'text': instance.text,
      'id': instance.id,
      'isSeries': instance.isSeries,
      'isEpisode': instance.isEpisode,
      '__typename': instance.typeName,
    };
