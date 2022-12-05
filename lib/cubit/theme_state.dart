part of 'theme_cubit.dart';

@immutable
abstract class ThemeChangeState {}

class ThemeChangeInitial extends ThemeChangeState {}

class ThemeClick extends ThemeChangeState{}

class OnThemeClick extends ThemeChangeState{}
