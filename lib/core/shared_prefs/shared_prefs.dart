import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/core/constants/shared_prefs_constants.dart';

class SharedPrefs {
  static SharedPrefs instance = SharedPrefs._();

  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String? getLang() => _prefs.getString(SharedPrefsConstants.languageKey);

  String? getThemeMode() => _prefs.getString(SharedPrefsConstants.themeModeKey);

  Future<bool> setLang(String lang) =>
      _prefs.setString(SharedPrefsConstants.languageKey, lang);

  Future<bool> setThemeMode(String themeMode) =>
      _prefs.setString(SharedPrefsConstants.themeModeKey, themeMode);

  SharedPrefs._();
}
