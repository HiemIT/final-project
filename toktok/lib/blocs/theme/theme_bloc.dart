import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toktok/utils/constants.dart';
import 'package:toktok/utils/shared_preferences_utils.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeInitial(switchValue: false)) {
    _getTheme();
    on<SwitchOnEvent>((event, emit) {
      setTheme(true);
      emit(const ThemeState(switchValue: true));
    });
    on<SwitchOffEvent>((event, emit) {
      setTheme(false);
      emit(const ThemeState(switchValue: false));
    });
  }

  Future<bool> _getTheme() async {
    await SharedPreferencesUtils.init();
    String kThemeKey = SharedPreferencesKeys.themeKey;

    final bool theme = await SharedPreferencesUtils.getTheme(kThemeKey);

    theme ? add(SwitchOnEvent()) : add(SwitchOffEvent());

    return theme;
  }

  Future<void> setTheme(bool value) async {
    String kThemeKey = SharedPreferencesKeys.themeKey;
    await SharedPreferencesUtils.setTheme(kThemeKey, value);
  }
}
