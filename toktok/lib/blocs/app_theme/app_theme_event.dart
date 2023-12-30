import 'package:equatable/equatable.dart';

class AppThemeEvent extends Equatable {
  const AppThemeEvent();
  @override
  List<Object?> get props => [];
}

class AppThemeInitialEvent extends AppThemeEvent {}

class AppThemeDarkEvent extends AppThemeEvent {}

class AppThemeLightEvent extends AppThemeEvent {}
