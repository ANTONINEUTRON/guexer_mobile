
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guexer/data/enums/game_mode.dart';
import 'package:guexer/features/game/cubits/game_state.dart';

class GameCubit extends Cubit<GameState>{
  GameCubit() : super(GameState());

  void setGameMode({required GameMode gameMode}){
    emit(state.copyWith(gameMode: gameMode));
  }
}