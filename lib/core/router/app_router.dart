import 'package:auto_route/auto_route.dart';
import 'package:test_app/core/constants/app_router_constants.dart';
import 'package:test_app/core/router/app_router.gr.dart';
import 'package:test_app/core/router/auth_guard.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  RouteType get defaultRouteType => const RouteType.adaptive();

  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          path: AppRouterConstants.mainPage,
          guards: [AuthGuard()],
          initial: true,
        ),
        AutoRoute(
          page: PhotosRoute.page,
          path: AppRouterConstants.photosPage,
        ),
        AutoRoute(
          page: PhotoRoute.page,
          path: AppRouterConstants.photoPage,
        ),
        AutoRoute(
          page: SettingsRoute.page,
          path: AppRouterConstants.settingsPage,
        ),
      ];
}
