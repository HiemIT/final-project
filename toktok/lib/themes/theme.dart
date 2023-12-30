import 'package:flutter/material.dart';
import 'package:toktok/themes/text_styles.dart';
import 'app_colors.dart';

enum AppTheme {
  darkTheme,
  lightTheme,
}

class AppThemes {
  static final appThemeData = {
    AppTheme.darkTheme: ThemeData(
      primaryColor: AppColors.primary,
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.dark3,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.primary,
        secondary: AppColors.white,
        background: AppColors.dark3,
        surface: AppColors.dark3,
        onPrimary: AppColors.white,
        brightness: Brightness.dark,
      ),
      fontFamily: 'Urbanist',
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.dark3,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey500,
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: TextStyles.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: TextStyles.medium,
        ),
        elevation: 0,
        selectedIconTheme: IconThemeData(size: 24, color: AppColors.primary),
        unselectedIconTheme: IconThemeData(size: 24, color: AppColors.grey500),
      ),
    ),
    AppTheme.lightTheme: ThemeData(
      primaryColor: AppColors.primary,
      useMaterial3: true,
      brightness: Brightness.light,
      iconTheme: const IconThemeData(
        color: AppColors.grey800,
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: AppColors.grey800),
      fontFamily: 'Urbanist',
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.primary,
        secondary: AppColors.white,
        background: AppColors.white,
        surface: AppColors.white,
        onPrimary: AppColors.white,
        brightness: Brightness.light,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey500,
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: TextStyles.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: TextStyles.medium,
        ),
        elevation: 0,
        selectedIconTheme: IconThemeData(size: 24, color: AppColors.primary),
        unselectedIconTheme: IconThemeData(size: 24, color: AppColors.grey500),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyles.heading1,
        displayMedium: TextStyles.heading2,
        displaySmall: TextStyles.heading3,
        headlineMedium: TextStyles.heading4,
        headlineSmall: TextStyles.heading5,
        titleLarge: TextStyles.heading6,
        titleMedium: TextStyles.bodyLargeBold,
        titleSmall: TextStyles.bodyLargeSemibold,
        bodyLarge: TextStyles.bodyMediumBold,
        bodyMedium: TextStyles.bodyMediumSemibold,
      ).apply(
        bodyColor: AppColors.dark3,
        displayColor: AppColors.dark3,
      ),
    )
  };
}
