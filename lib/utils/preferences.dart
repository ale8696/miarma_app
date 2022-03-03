import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
 
  static late SharedPreferences _prefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }
  
  // Sets
  static Future<bool> setDouble(String key, double val) async {
    bool res = await _prefs.setDouble(key, val);
    return res;
  }

  // Gets
  static Future<double?> getDouble(String key) async {
    double? res = _prefs.getDouble(key);
    return res;
  }

}