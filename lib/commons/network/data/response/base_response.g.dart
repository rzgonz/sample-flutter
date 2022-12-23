// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) =>
    BaseResponse<T>(
      apiCode: json['api_code'] as String?,
      apiCodeError: json['api_code_error'] as String?,
      apiRawMessage: json['api_raw_message'] == null
          ? null
          : BaseRawMessage.fromJson(json['api_raw_message']),
      apiResultData:
          _dataFromJson(json['api_result_data'] as Map<String, dynamic>),
    )..apiDisplayMessage = json['api_display_message'] as String?;

Map<String, dynamic> _$BaseResponseToJson<T>(BaseResponse<T> instance) =>
    <String, dynamic>{
      'api_code': instance.apiCode,
      'api_code_error': instance.apiCodeError,
      'api_display_message': instance.apiDisplayMessage,
      'api_raw_message': instance.apiRawMessage?.toJson(),
      'api_result_data': _dataToJson(instance.apiResultData),
    };
