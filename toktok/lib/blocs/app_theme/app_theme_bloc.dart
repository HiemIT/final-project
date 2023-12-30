import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toktok/blocs/app_theme/app_theme_event.dart';
import 'package:toktok/blocs/app_theme/app_theme_state.dart';
import 'package:toktok/utils/constants.dart';
import 'package:toktok/utils/shared_preferences_utils.dart';

import '../../utils/enum.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc() : super(AppThemeInitialState()) {
    on<AppThemeEvent>((event, emit) async {
      if (event is AppThemeInitialEvent) {
        await SharedPreferencesUtils.getTheme(SharedPreferencesKeys.themeKey)
            .then((theme) => {
                  theme
                      ? emit(
                          AppThemeChangeState(
                            appThemeType: ThemeType.lightTheme,
                          ),
                        )
                      : emit(
                          AppThemeChangeState(
                              appThemeType: ThemeType.darkTheme),
                        )
                });
      } else if (event is AppThemeLightEvent) {
        await SharedPreferencesUtils.setTheme(
          SharedPreferencesKeys.themeKey,
          true,
        ).then((value) => {
              emit(
                AppThemeChangeState(
                  appThemeType: ThemeType.lightTheme,
                ),
              )
            });
      } else if (event is AppThemeDarkEvent) {
        await SharedPreferencesUtils.setTheme(
          SharedPreferencesKeys.themeKey,
          false,
        ).then((value) => {
              emit(
                AppThemeChangeState(
                  appThemeType: ThemeType.darkTheme,
                ),
              )
            });
      }
    });
  }
}
