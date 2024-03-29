// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i7;
import 'package:test_app/domain/api/photo.dart' as _i6;
import 'package:test_app/presentation/pages/main/main_page.dart' as _i1;
import 'package:test_app/presentation/pages/photos/photo_page.dart' as _i2;
import 'package:test_app/presentation/pages/photos/photos_page.dart' as _i3;
import 'package:test_app/presentation/pages/settings/settings_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    PhotoRoute.name: (routeData) {
      final args = routeData.argsAs<PhotoRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.PhotoPage(
          photo: args.photo,
          key: args.key,
        ),
      );
    },
    PhotosRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PhotosPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PhotoPage]
class PhotoRoute extends _i5.PageRouteInfo<PhotoRouteArgs> {
  PhotoRoute({
    required _i6.Photo photo,
    _i7.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          PhotoRoute.name,
          args: PhotoRouteArgs(
            photo: photo,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PhotoRoute';

  static const _i5.PageInfo<PhotoRouteArgs> page =
      _i5.PageInfo<PhotoRouteArgs>(name);
}

class PhotoRouteArgs {
  const PhotoRouteArgs({
    required this.photo,
    this.key,
  });

  final _i6.Photo photo;

  final _i7.Key? key;

  @override
  String toString() {
    return 'PhotoRouteArgs{photo: $photo, key: $key}';
  }
}

/// generated route for
/// [_i3.PhotosPage]
class PhotosRoute extends _i5.PageRouteInfo<void> {
  const PhotosRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PhotosRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhotosRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
