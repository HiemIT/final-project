import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:toktok/blocs/app_theme/app_theme_bloc.dart';
import 'package:toktok/blocs/app_theme/app_theme_event.dart';
import 'package:toktok/blocs/app_theme/app_theme_state.dart';
import 'package:toktok/modules/dashboard/pages/dashboard_page.dart';

import 'package:toktok/route/routes.dart';
import 'package:toktok/utils/enum.dart';

import 'themes/my_themes.dart';

class MyApp extends StatefulWidget {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppThemeBloc()..add(AppThemeInitialEvent()),
        ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var themeState = context.select((AppThemeBloc bloc) => bloc.state);
    return BlocBuilder<AppThemeBloc, AppThemeState>(
      // buildWhen: (previous, current) =>
      //     previous.switchValue != current.switchValue,
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          theme: themeState is AppThemeChangeState
              ? ((themeState.appThemeType == ThemeType.lightTheme)
                  ? MyThemes.lightTheme
                  : MyThemes.darkTheme)
              : MyThemes.lightTheme,
          onGenerateRoute: (settings) {
            return Routes.authorizedRoute(settings);
          },
          navigatorKey: MyApp.navigatorKey,
          home: const DashboardPage(),
        );
      },
    );
  }
}
