import 'package:freezed_annotation/freezed_annotation.dart';

import 'title_results.dart';

part 'results.g.dart';

@JsonSerializable()
class Results {
  @JsonKey(name: 'results')
  final TitleResults? titleResults;

  Results({this.titleResults});

  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
