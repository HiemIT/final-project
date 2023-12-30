import 'package:flutter/material.dart';

import 'app.dart';
import 'utils/shared_preferences_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPreferencesUtils.init();
  runApp(const MyApp());
}
