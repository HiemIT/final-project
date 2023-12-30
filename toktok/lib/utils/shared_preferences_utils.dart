import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> getTheme(String key) async {
    return _prefs.getBool(key) ?? false;
  }

  static Future<bool> setTheme(String key, bool value) async {
    return _prefs.setBool(key, value);
  }
}
