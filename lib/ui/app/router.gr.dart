// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:someproj/ui/views/mrz_scan/mrz_view.dart' as _i3;
import 'package:someproj/ui/views/ocr_scan/ocr_scan.dart' as _i2;
import 'package:someproj/ui/views/startup/startup_view.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    StartUp.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.StartUp());
    },
    Ocr.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.Ocr());
    },
    Mrz.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.Mrz());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(StartUp.name, path: '/'),
        _i4.RouteConfig(Ocr.name, path: '/Ocr'),
        _i4.RouteConfig(Mrz.name, path: '/Mrz')
      ];
}

/// generated route for
/// [_i1.StartUp]
class StartUp extends _i4.PageRouteInfo<void> {
  const StartUp() : super(StartUp.name, path: '/');

  static const String name = 'StartUp';
}

/// generated route for
/// [_i2.Ocr]
class Ocr extends _i4.PageRouteInfo<void> {
  const Ocr() : super(Ocr.name, path: '/Ocr');

  static const String name = 'Ocr';
}

/// generated route for
/// [_i3.Mrz]
class Mrz extends _i4.PageRouteInfo<void> {
  const Mrz() : super(Mrz.name, path: '/Mrz');

  static const String name = 'Mrz';
}
