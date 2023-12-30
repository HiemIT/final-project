import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  Brightness getCurrentDeviceTheme() {
    return MediaQuery.of(this).platformBrightness;
  }
}
