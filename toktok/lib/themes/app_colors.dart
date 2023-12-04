import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFFFF4D67);
  static const secondary = Color(0xFFFFD300);

  static const success = Color(0xFF4ADE80);
  static const info = Color(0xFF246BFD);
  static const warning = Color(0xFFFACC15);
  static const error = Color(0xFF757575);
  static const disabled = Color(0xFFD8D8D8);
  static const disButton = Color(0xFFE8808F);

// GreyScale
  static const grey900 = Color(0xFF212121);
  static const grey800 = Color(0xFF424242);
  static const grey700 = Color(0xFF616161);
  static const grey600 = Color(0xFF757575);
  static const grey500 = Color(0xFF9E9E9E);
  static const grey400 = Color(0xFFBDBDBD);
  static const grey300 = Color(0xFFE0E0E0);
  static const grey200 = Color(0xFFEEEEEE);
  static const grey100 = Color(0xFFF5F5F5);
  static const grey50 = Color(0xFFFAFAFA);

  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const red = Color(0xFFF44336);
  static const pink = Color(0xFFE91E63);
  static const purple = Color(0xFF9C27B0);
  static const deepPurple = Color(0xFF673AB7);
  static const indigo = Color(0xFF3F51B5);
  static const blue = Color(0xFF2196F3);
  static const lightBlue = Color(0xFF03A9F4);
  static const cyan = Color(0xFF00BCD4);
  static const teal = Color(0xFF009688);
  static const green = Color(0xFF4CAF50);
  static const lightGreen = Color(0xFF8BC34A);
  static const lime = Color(0xFFCDDC39);
  static const yellow = Color(0xFFFFEB3B);
  static const amber = Color(0xFFFFC107);
  static const orange = Color(0xFFFF9800);
  static const deepOrange = Color(0xFFFF5722);
  static const brown = Color(0xFF795548);
  static const blueGrey = Color(0xFFF54336);

  // dark colors: dark1 dark2 dark3
  static const dark1 = Color(0xFF1A1B22);
  static const dark2 = Color(0xFF23252F);
  static const dark3 = Color(0xFF2A2B39);

  // Gradients
  static const gradientRed = LinearGradient(
    begin: Alignment(-0.96, 0.28),
    end: Alignment(0.96, -0.28),
    colors: [Color(0xFFFF4D67), Color(0xFFFF8A9B)],
  );
  static const gradientYellow = LinearGradient(
    begin: Alignment(-0.96, 0.28),
    end: Alignment(0.96, -0.28),
    colors: [Color(0xFFFACC15), Color(0xFFFFE57F)],
  );
  static const gradientGreen = LinearGradient(
    begin: Alignment(-0.96, 0.28),
    end: Alignment(0.96, -0.28),
    colors: [Color(0xFF4ADE80), Color(0xFF72FFA5)],
  );
  static const gradientBlue = LinearGradient(
    begin: Alignment(-0.96, 0.28),
    end: Alignment(0.96, -0.28),
    colors: [Color(0xFF246BFD), Color(0xFF6E9DFF)],
  );
}
