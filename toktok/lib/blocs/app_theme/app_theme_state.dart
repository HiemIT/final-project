import 'package:equatable/equatable.dart';
import 'package:toktok/utils/enum.dart';

class AppThemeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AppThemeInitialState extends AppThemeState {}

class AppThemeChangeState extends AppThemeState {
  late final ThemeType appThemeType;

  AppThemeChangeState({required this.appThemeType});

  @override
  List<Object?> get props => [appThemeType];
}
