import 'dart:ui';

class LocalizationPreferences {
  static const String path = 'assets/translations';
  static const Locale enLocale = Locale('en');
  static const Locale arLocale = Locale('ua');
  static const List<Locale> supportedLocales = [
    enLocale,
    arLocale,
  ];
  static const Locale fallbackLocale = enLocale;

  const LocalizationPreferences._();
}
