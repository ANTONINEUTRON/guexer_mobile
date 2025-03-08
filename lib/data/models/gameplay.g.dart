// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gameplay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamePlayImpl _$$GamePlayImplFromJson(Map<String, dynamic> json) =>
    _$GamePlayImpl(
      id: json['id'] as String,
      theme: json['theme'] as String,
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$$GamePlayImplToJson(_$GamePlayImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'theme': instance.theme,
      'duration': instance.duration,
    };
