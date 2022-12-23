import 'package:json_annotation/json_annotation.dart';
import 'package:news/commons/network/data/response/base_object_response.dart';
import 'package:news/modules/Intro/remote/data/response/intro.dart';

part 'intro_response.g.dart';

@JsonSerializable(explicitToJson: true)
class IntroResponse extends BaseObjectResponse {
  IntroResponse({
    this.introTotal,
    this.intro,
  });

  final int? introTotal;
  final List<Intro>? intro;

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory IntroResponse.fromJson(Map<String, dynamic> json) =>
      _$IntroResponseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$IntroResponseToJson(this);
}
