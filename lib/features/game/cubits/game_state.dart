import 'package:equatable/equatable.dart';
import 'package:guexer/data/enums/game_mode.dart';

class GameState extends Equatable {
  const GameState({this.gameMode});

  final GameMode? gameMode;

  @override
  List<Object?> get props => [gameMode];

  GameState copyWith({GameMode? gameMode}) {
    return GameState(gameMode: gameMode ?? this.gameMode);
  }
}
