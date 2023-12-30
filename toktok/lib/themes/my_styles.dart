import 'package:flutter/material.dart';
import 'package:toktok/themes/app_colors.dart';
import 'package:toktok/themes/light_theme_colors.dart';
import 'package:toktok/themes/my_fonts.dart';

import 'dark_theme_colors.dart';

class MyStyles {
  // app bar theme
  static AppBarTheme appBarThemeLight = AppBarTheme(
    titleTextStyle: MyFonts.textThemeLight.headlineSmall,
    backgroundColor: LightThemeColors.appBarColor,
    elevation: 0,
    iconTheme: const IconThemeData(
      size: 28,
      color: LightThemeColors.iconColor,
    ),
  );

  static AppBarTheme appBarThemeDark = AppBarTheme(
    titleTextStyle: MyFonts.textThemeDark.headlineSmall,
    backgroundColor: DarkThemeColors.appBarColor,
    elevation: 0,
    iconTheme: const IconThemeData(
      size: 28,
      color: DarkThemeColors.iconColor,
    ),
  );

  // bottom sheet theme data
  static BottomSheetThemeData bottomSheetThemeDataLight =
      const BottomSheetThemeData(
    backgroundColor: LightThemeColors.bottomSheetBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
  );

  static BottomSheetThemeData bottomSheetThemeDataDark =
      const BottomSheetThemeData(
    backgroundColor: DarkThemeColors.bottomSheetBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
  );

  // Drawer theme data
  static DrawerThemeData drawerThemeDataLight = const DrawerThemeData(
    backgroundColor: LightThemeColors.drawerBackgroundColor,
  );

  static DrawerThemeData drawerThemeDataDark = const DrawerThemeData(
    backgroundColor: DarkThemeColors.drawerBackgroundColor,
  );

  static const tabBarTheme = TabBarTheme();

  // checkbox
  static final checkboxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.all<Color>(LightThemeColors.primaryColor),
    checkColor: MaterialStateProperty.all<Color>(AppColors.white),
  );
}
