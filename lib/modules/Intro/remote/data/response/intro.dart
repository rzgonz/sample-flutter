import 'package:json_annotation/json_annotation.dart';

part 'intro.g.dart';

@JsonSerializable(explicitToJson: true)
class Intro {
  Intro({
    this.introId,
    this.title,
    this.desc,
    this.position,
    this.assetId,
    this.url,
  });

  final int? introId;
  @JsonKey(name: '_title')
  final String? title;
  @JsonKey(name: '_desc')
  final String? desc;
  @JsonKey(name: '_position')
  final int? position;
  final int? assetId;
  @JsonKey(name: '_url')
  final String? url;

  factory Intro.fromJson(Map<String, dynamic> json) => _$IntroFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$IntroToJson(this);
}
