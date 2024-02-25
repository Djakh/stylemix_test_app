import 'package:shared_preferences/shared_preferences.dart';

const String tokenKey = 'AgromartToken';
const String localizationKey = 'AgromartMobileLocalization';
const String introKey = 'AgromartMobileIntro';

class Preferences {
  static Future<bool> setToken(String token) async {
    final preferences = await SharedPreferences.getInstance();
    final isSaved = await preferences.setString(tokenKey, token);
    return isSaved;
  }

  static Future<String> getToken() async {
    final preferences = await SharedPreferences.getInstance();
    final token = preferences.getString(tokenKey) ?? "";
    return token;
  }

  static Future<bool> removeToken() async {
    final preferences = await SharedPreferences.getInstance();
    final isRemoved = await preferences.remove(tokenKey);
    return isRemoved;
  }

  static Future<bool> setLocalization(int localeIndex) async {
    final preferences = await SharedPreferences.getInstance();
    final isSaved = await preferences.setInt(localizationKey, localeIndex);
    return isSaved;
  }

  static Future<int?> getLocalization() async {
    final preferences = await SharedPreferences.getInstance();
    final localeIndex = preferences.getInt(localizationKey);
    return localeIndex;
  }

  static Future<bool> setIntroFinished(bool finished) async {
    final preferences = await SharedPreferences.getInstance();
    final isSaved = await preferences.setBool(introKey, finished);
    return isSaved;
  }

  static Future<bool> getIntroFinished() async {
    final preferences = await SharedPreferences.getInstance();
    final finished = preferences.getBool(introKey) ?? false;
    return finished;
  }

  static Future<bool> checkDoesPrefsContainsToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    bool prefsContainsKey = prefs.containsKey(tokenKey);
    return prefsContainsKey;
  }
}
