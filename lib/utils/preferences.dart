import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  static late SharedPreferences _prefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  // Sets
  static Future<bool> setString(String key, String val) async {
    bool res = await _prefs.setString(key, val);
    return res;
  }

  // Gets
  static Future<String?> getString(String key) async {
    String? res = _prefs.getString(key);
    return res;
  }
}
