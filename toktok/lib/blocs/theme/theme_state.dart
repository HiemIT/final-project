part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final bool switchValue;
  const ThemeState({required this.switchValue});

  @override
  List<Object> get props => [switchValue];
}

final class ThemeInitial extends ThemeState {
  const ThemeInitial({required bool switchValue})
      : super(switchValue: switchValue);
}
