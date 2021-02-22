import 'package:flutter_app/util/type_def.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UiManager {
  static final String Key_FristRun = "FirstRuning_2";

  static Future<bool> isFirstRun() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Key_FristRun);
  }

  static void setFirstRun(bool isFirstRun) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(Key_FristRun, isFirstRun);
  }
}