// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntroResponse _$IntroResponseFromJson(Map<String, dynamic> json) =>
    IntroResponse(
      introTotal: json['introTotal'] as int?,
      intro: (json['intro'] as List<dynamic>?)
          ?.map((e) => Intro.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IntroResponseToJson(IntroResponse instance) =>
    <String, dynamic>{
      'introTotal': instance.introTotal,
      'intro': instance.intro?.map((e) => e.toJson()).toList(),
    };
