import 'package:news/commons/network/data/response/base_object_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:news/modules/Intro/remote/data/response/intro.dart';
import 'package:news/modules/Intro/remote/data/response/intro_response.dart';
import 'base_raw_message.dart';

part 'base_response.g.dart';

@JsonSerializable(explicitToJson: true)
class BaseResponse<T> {
  @JsonKey(name: "api_code")
  String? apiCode;
  @JsonKey(name: "api_code_error")
  String? apiCodeError;
  @JsonKey(name: "api_display_message")
  String? apiDisplayMessage;
  @JsonKey(name: "api_raw_message")
  BaseRawMessage? apiRawMessage;
  @JsonKey(
      fromJson: _dataFromJson, toJson: _dataToJson, name: "api_result_data")
  T? apiResultData;

  BaseResponse(
      {this.apiCode,
      this.apiCodeError,
      this.apiRawMessage,
      this.apiResultData});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

T _dataFromJson<T>(Map<String, dynamic> input) =>
    IntroResponse.fromJson(input) as T;

Map<String, dynamic> _dataToJson<T>(T input) =>
    (input as IntroResponse).toJson();
