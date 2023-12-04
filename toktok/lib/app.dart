import 'package:flutter/material.dart';
import 'package:toktok/route/routes.dart';
import 'package:toktok/themes/app_colors.dart';

class MyApp extends StatefulWidget {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        useMaterial3: false,
        scaffoldBackgroundColor: AppColors.dark3,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      onGenerateRoute: (settings) {
        return Routes.authorizedRoute(settings);
      },
      navigatorKey: MyApp.navigatorKey,
      builder: _builder,
    );
  }

  Widget _builder(BuildContext context, Widget? child) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: 1.0,
      ),
      child: child!,
    );
  }
}
