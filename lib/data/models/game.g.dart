// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
  id: json['id'] as String,
  answer: json['answer'] as String,
  guesses:
      (json['guesses'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  hints:
      (json['hints'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
      'guesses': instance.guesses,
      'hints': instance.hints,
    };
