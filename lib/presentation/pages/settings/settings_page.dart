import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/core/localization/generated/codegen_loader.g.dart';
import 'package:test_app/core/localization/localization_preferences.dart';
import 'package:test_app/domain/data/app_data.dart';
import 'package:test_app/presentation/blocs/theme/theme_cubit.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.appBarSettings.tr()),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(LocaleKeys.labelLanguage.tr()),
            trailing: DropdownButton<Locale>(
              value: context.locale,
              onChanged: (l) => _onLanguageChanged(l, context),
              items: LocalizationPreferences.supportedLocales
                  .map(
                    (l) => DropdownMenuItem(
                      value: l,
                      child: Text(l.languageCode.toUpperCase()),
                    ),
                  )
                  .toList(),
            ),
          ),
          BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, themeMode) {
              return ListTile(
                title: Text(LocaleKeys.labelTheme.tr()),
                trailing: DropdownButton<ThemeMode>(
                  value: themeMode,
                  onChanged: (t) => _onThemeChanged(t, context),
                  items: ThemeMode.values
                      .map(
                        (t) => DropdownMenuItem(
                          value: t,
                          child: Text(t.name.toUpperCase()),
                        ),
                      )
                      .toList(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> _onLanguageChanged(Locale? l, BuildContext context) async {
    if (l != null) {
      GetIt.instance.get<AppData>().setLang(l.languageCode);
      await context.setLocale(l);
    }
  }

  void _onThemeChanged(ThemeMode? t, BuildContext context) {
    if (t != null) {
      context.read<ThemeCubit>().setTheme(t);
    }
  }
}
