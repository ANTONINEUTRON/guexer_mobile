import 'package:equatable/equatable.dart';
import 'package:guexer/data/enums/game_mode.dart';

class AppState extends Equatable {
  const AppState({
    this.gameMode,
  });

  final GameMode? gameMode;

  @override
  List<Object?> get props => [];

  AppState copyWith({
    GameMode? gameMode,
  }) {
    return AppState(
      gameMode: gameMode ?? this.gameMode,
    );
  }
}
