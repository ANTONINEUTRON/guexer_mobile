import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guexer/data/models/game_mode.dart';
import 'package:guexer/features/app/cubits/app_state.dart';

class AppBloc extends Cubit<AppState> {
  AppBloc() : super(AppState());

  void setGameMode({required GameMode gameMode}) {
    emit(state.copyWith(gameMode: gameMode));
  }
}
