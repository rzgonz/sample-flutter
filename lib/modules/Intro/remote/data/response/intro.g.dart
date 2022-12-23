// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Intro _$IntroFromJson(Map<String, dynamic> json) => Intro(
      introId: json['introId'] as int?,
      title: json['_title'] as String?,
      desc: json['_desc'] as String?,
      position: json['_position'] as int?,
      assetId: json['assetId'] as int?,
      url: json['_url'] as String?,
    );

Map<String, dynamic> _$IntroToJson(Intro instance) => <String, dynamic>{
      'introId': instance.introId,
      '_title': instance.title,
      '_desc': instance.desc,
      '_position': instance.position,
      'assetId': instance.assetId,
      '_url': instance.url,
    };
