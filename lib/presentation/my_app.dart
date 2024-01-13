import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/core/analytics/analytics.dart';
import 'package:test_app/core/localization/generated/codegen_loader.g.dart';
import 'package:test_app/core/router/app_router.dart';
import 'package:test_app/core/theme/app_theme.dart';
import 'package:test_app/domain/data/app_data.dart';
import 'package:test_app/presentation/blocs/photos/photos_bloc.dart';
import 'package:test_app/presentation/blocs/theme/theme_cubit.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Analytics _analytics = GetIt.instance.get<Analytics>();
  final AppData _appData = GetIt.instance.get<AppData>();

  @override
  void initState() {
    super.initState();
    _analytics.logOpenApp();
  }

  @override
  void didChangeDependencies() {
    _appData.setLang(context.locale.toString());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PhotosBloc()),
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            routerConfig: GetIt.instance.get<AppRouter>().config(
                  navigatorObservers: () => [_analytics.getAnalyticsObserver()],
                ),
            onGenerateTitle: (context) =>
                LocaleKeys.appTitle.tr(context: context),
            locale: context.locale,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.dartTheme,
            themeMode: themeMode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
          );
        },
      ),
    );
  }
}
