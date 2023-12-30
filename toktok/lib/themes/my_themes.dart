import 'package:flutter/material.dart';
import 'package:toktok/themes/app_colors.dart';
import 'package:toktok/themes/text_styles.dart';
import 'dark_theme_colors.dart';
import 'light_theme_colors.dart';
import 'my_fonts.dart';
import 'my_styles.dart';

class MyThemes {
  static final lightTheme = ThemeData(
    primaryColor: LightThemeColors.primaryColor,
    useMaterial3: false,
    scaffoldBackgroundColor: LightThemeColors.scaffoldBackgroundColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColorLight: AppColors.dark2,
    dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    // AppBar theme
    appBarTheme: MyStyles.appBarThemeLight,
    // Bottom sheet theme
    bottomSheetTheme: MyStyles.bottomSheetThemeDataLight,
    // Drawer theme
    drawerTheme: MyStyles.drawerThemeDataLight,
    // Bottom bar theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: LightThemeColors.bottomBarBackgroundColor,
      selectedItemColor: LightThemeColors.bottomBarSelectedItemColor,
      unselectedItemColor: LightThemeColors.bottomBarUnselectedItemColor,
      selectedLabelStyle:
          MyFonts.textThemeLight.bodySmall!.copyWith(fontSize: 10),
      unselectedLabelStyle: MyFonts.textThemeLight.bodySmall!.copyWith(
        fontSize: 10,
        height: 2,
      ),
      elevation: 0,
      selectedIconTheme: const IconThemeData(size: 24),
      unselectedIconTheme: const IconThemeData(size: 24),
    ),
    // Tab bar theme
    tabBarTheme: MyStyles.tabBarTheme,
    // Text theme
    textTheme: MyFonts.textThemeLight,
    // Icon theme
    iconTheme: const IconThemeData(color: LightThemeColors.iconColor),
    // Text selection theme
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: LightThemeColors.iconColor),
    checkboxTheme: MyStyles.checkboxTheme,
  );

  static final darkTheme = ThemeData(
    primaryColor: DarkThemeColors.primaryColor,
    useMaterial3: false,
    scaffoldBackgroundColor: DarkThemeColors.scaffoldBackgroundColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColorLight: AppColors.dark2,
    dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    // AppBar theme
    appBarTheme: MyStyles.appBarThemeDark,
    // Bottom sheet theme
    bottomSheetTheme: MyStyles.bottomSheetThemeDataDark,
    // Drawer theme
    drawerTheme: MyStyles.drawerThemeDataDark,
    // Bottom bar theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: DarkThemeColors.bottomBarBackgroundColor,
      selectedItemColor: DarkThemeColors.bottomBarSelectedItemColor,
      unselectedItemColor: DarkThemeColors.bottomBarUnselectedItemColor,
      selectedLabelStyle:
          MyFonts.textThemeLight.bodySmall!.copyWith(fontSize: 10),
      unselectedLabelStyle: MyFonts.textThemeLight.bodySmall!.copyWith(
        fontSize: 10,
        fontWeight: TextStyles.medium,
        // làm khoảng cách giữa icon và label
        height: 2,
      ),
      elevation: 0,
      selectedIconTheme: const IconThemeData(size: 24),
      unselectedIconTheme: const IconThemeData(size: 24),
    ),
    // Tab bar theme
    tabBarTheme: MyStyles.tabBarTheme,
    // Text theme
    textTheme: MyFonts.textThemeDark,
    // Icon theme
    iconTheme: const IconThemeData(color: DarkThemeColors.iconColor),
    // Text selection theme
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: DarkThemeColors.iconColor),
    checkboxTheme: MyStyles.checkboxTheme,
  );
}
