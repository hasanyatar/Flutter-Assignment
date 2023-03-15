import 'package:freezed_annotation/freezed_annotation.dart';
part 'caption.g.dart';

@JsonSerializable()
class Caption {
  @JsonKey(name: 'plainText')
  final String? plainText;
  @JsonKey(name: '__typename')
  final String? typeName;

  Caption({this.plainText, this.typeName});

  factory Caption.fromJson(Map<String, dynamic> json) => _$CaptionFromJson(json);

  Map<String, dynamic> toJson() => _$CaptionToJson(this);
}
