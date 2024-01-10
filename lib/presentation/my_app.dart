import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/core/analytics/analytics.dart';
import 'package:test_app/core/localization/generated/codegen_loader.g.dart';
import 'package:test_app/core/router/app_router.dart';
import 'package:test_app/presentation/blocs/photos/photos_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Analytics _analytics = GetIt.instance.get<Analytics>();

  @override
  void initState() {
    super.initState();
    _analytics.logOpenApp();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PhotosBloc(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: GetIt.instance.get<AppRouter>().config(
              navigatorObservers: () => [_analytics.getAnalyticsObserver()],
            ),
        onGenerateTitle: (context) => LocaleKeys.appTitle.tr(context: context),
        locale: context.locale,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
