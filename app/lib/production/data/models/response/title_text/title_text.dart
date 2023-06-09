import 'package:freezed_annotation/freezed_annotation.dart';
part 'title_text.g.dart';

@JsonSerializable()
class TitleText {
  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: '__typename')
  final String? typeName;

  TitleText({this.text, this.typeName});

  factory TitleText.fromJson(Map<String, dynamic> json) => _$TitleTextFromJson(json);

  Map<String, dynamic> toJson() => _$TitleTextToJson(this);
}
