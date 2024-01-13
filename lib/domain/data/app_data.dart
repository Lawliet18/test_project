import 'package:get_it/get_it.dart';
import 'package:test_app/core/localization/localization_preferences.dart';
import 'package:test_app/core/shared_prefs/shared_prefs.dart';

class AppData {
  final SharedPrefs _sharedPrefs = GetIt.instance.get();

  late String _language;
  late String? _themeMode;

  String get language => _language;
  String? get themeMode => _themeMode;

  Future<void> setLang(String lang) async {
    await _sharedPrefs.setLang(lang);
    _language = lang;
  }

  Future<void> setThemeMode(String themeMode) async {
    await _sharedPrefs.setThemeMode(themeMode);
    _themeMode = themeMode;
  }

  AppData() {
    _language = _sharedPrefs.getLang() ??
        LocalizationPreferences.fallbackLocale.languageCode;
    _themeMode = _sharedPrefs.getThemeMode();
  }
}
