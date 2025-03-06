import 'package:freezed_annotation/freezed_annotation.dart';

part 'gameplay.g.dart';
part 'gameplay.freezed.dart';

@freezed
class GamePlay with _$GamePlay {
  const factory GamePlay({
    required String id,
    required int totalScore,
  }) = _GamePlay;

  factory GamePlay.fromJson(Map<String, dynamic> json) => _$GamePlayFromJson(json);
}
