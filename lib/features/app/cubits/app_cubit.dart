import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guexer/data/enums/game_mode.dart';
import 'package:guexer/features/app/cubits/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());

  void setGameMode({required GameMode gameMode}) {
    emit(state.copyWith(gameMode: gameMode));
  }
}
