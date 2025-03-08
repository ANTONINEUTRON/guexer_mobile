import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.g.dart';
part 'game.freezed.dart';

@freezed
class Game with _$Game{
  const factory Game({
    required String id,
    required String answer,
    @Default([]) List<String> guesses,
    @Default([]) List<String> hints,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}