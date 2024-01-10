import 'package:get_it/get_it.dart';
import 'package:test_app/core/analytics/analytics.dart';
import 'package:test_app/core/router/app_router.dart';
import 'package:test_app/data/api/api.dart';
import 'package:test_app/data/repository/repository.dart';

class DependencyInjector {
  const DependencyInjector._();
  static void inject() {
    // Api
    GetIt.instance.registerSingleton<IUnsplashApi>(UnsplashApi());

    // Repositories
    GetIt.instance.registerSingleton<IPhotosRepository>(PhotosRepository());

    // Core
    GetIt.instance.registerSingleton<AppRouter>(AppRouter());
    GetIt.instance.registerSingleton<Analytics>(Analytics());
  }
}
