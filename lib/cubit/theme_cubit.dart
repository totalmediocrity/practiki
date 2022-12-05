import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeChangeState> {
  ThemeCubit() : super(ThemeChangeInitial());

 Brightness currTheme = Brightness.light;

  void ThemeClick(){
    emit(OnThemeClick());

    if(currTheme == Brightness.light) { 
      currTheme = Brightness.dark;
      emit(OnThemeClick());
    } 
    else { 
      currTheme = Brightness.light; 
      emit(OnThemeClick());
    }
  }

}
