// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrimaryImage _$$_PrimaryImageFromJson(Map<String, dynamic> json) =>
    _$_PrimaryImage(
      id: json['id'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      url: json['url'] as String?,
      caption: json['caption'] == null
          ? null
          : Caption.fromJson(json['caption'] as Map<String, dynamic>),
      typeName: json['__typename'] as String?,
    );

Map<String, dynamic> _$$_PrimaryImageToJson(_$_PrimaryImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'caption': instance.caption,
      '__typename': instance.typeName,
    };
