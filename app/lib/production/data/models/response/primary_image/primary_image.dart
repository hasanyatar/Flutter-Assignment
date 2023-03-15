import 'package:app/production/data/models/response/caption/caption.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'primary_image.g.dart';
part 'primary_image.freezed.dart';

@freezed
class PrimaryImage with _$PrimaryImage {
  const factory PrimaryImage({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'caption') Caption? caption,
    @JsonKey(name: '__typename') String? typeName,
  }) = _PrimaryImage;

  factory PrimaryImage.fromJson(Map<String, dynamic> json) => _$PrimaryImageFromJson(json);
}
