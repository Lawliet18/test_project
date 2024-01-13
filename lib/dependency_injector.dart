import 'package:get_it/get_it.dart';
import 'package:test_app/core/analytics/analytics.dart';
import 'package:test_app/core/router/app_router.dart';
import 'package:test_app/core/shared_prefs/shared_prefs.dart';
import 'package:test_app/data/api/api.dart';
import 'package:test_app/data/repository/repository.dart';
import 'package:test_app/domain/data/app_data.dart';

class DependencyInjector {
  const DependencyInjector._();
  static Future<void> inject() async {
    // Api
    GetIt.instance.registerSingleton<IUnsplashApi>(UnsplashApi());

    // Repositories
    GetIt.instance.registerSingleton<IPhotosRepository>(PhotosRepository());

    // Core
    GetIt.instance.registerSingleton<AppRouter>(AppRouter());
    GetIt.instance.registerSingleton<Analytics>(Analytics());
    GetIt.instance.registerSingletonAsync<SharedPrefs>(() async {
      await SharedPrefs.instance.init();
      return SharedPrefs.instance;
    });
    await GetIt.instance.isReady<SharedPrefs>();
    GetIt.instance.registerSingleton<AppData>(AppData());
  }
}
