import 'package:flutter/material.dart';
import 'package:toktok/themes/app_colors.dart';

class DarkThemeColors {
  // dark swatch
  static const Color primaryColor = AppColors.primary;
  static const Color accentColor = AppColors.grey900;

  // AppBar
  static const Color appBarColor = AppColors.dark1;

  // Scaffold
  static const Color scaffoldBackgroundColor = accentColor;
  static const Color backgroundColor = AppColors.dark2;
  static const Color cardColor = AppColors.dark2;

  // Icons
  static const Color iconColor = AppColors.white;
  static const Color disabledIconColor = AppColors.grey500;

  // Button
  static const Color buttonColor = primaryColor;
  static const Color buttonTextColor = AppColors.white;
  static const Color disabledButtonColor = AppColors.disButton;
  static const Color disabledButtonTextColor = AppColors.white;

  // Text
  static const Color bodyTextColor = AppColors.white;
  static const Color headlinesTextColor = AppColors.white;
  static const Color captionTextColor = AppColors.grey400;
  static const Color hintTextColor = AppColors.grey500;

  //chip
  static const Color chipBgColor = AppColors.dark3;
  static const Color chipTextColor = AppColors.primary;

  // progress bar indicator
  static const Color progressBarIndicatorColor = AppColors.primary;

  // Drawer
  static const Color drawerBackgroundColor = AppColors.dark1;

  // bottomSheet
  static const Color bottomSheetBackgroundColor = AppColors.dark1;

  // Divider
  static const Color dividerColor = AppColors.dark3;

  // Keyboards
  static const Color keyboardBackgroundColor = AppColors.dark3;

  // Bottom bar
  static const Color bottomBarBackgroundColor = AppColors.dark1;
  static const Color bottomBarSelectedItemColor = AppColors.primary;
  static const Color bottomBarUnselectedItemColor = AppColors.grey500;
}
