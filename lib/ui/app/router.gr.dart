// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:someproj/ui/views/mrz_scan/mrz_view.dart' as _i3;
import 'package:someproj/ui/views/ocr_scan/excel_documents_list.dart' as _i4;
import 'package:someproj/ui/views/ocr_scan/ocr_scan.dart' as _i2;
import 'package:someproj/ui/views/startup/startup_view.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    StartUp.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.StartUp());
    },
    Ocr.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.Ocr());
    },
    Mrz.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.Mrz());
    },
    ExcelList.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ExcelList());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(StartUp.name, path: '/'),
        _i5.RouteConfig(Ocr.name, path: '/Ocr'),
        _i5.RouteConfig(Mrz.name, path: '/Mrz'),
        _i5.RouteConfig(ExcelList.name, path: '/excel-list')
      ];
}

/// generated route for
/// [_i1.StartUp]
class StartUp extends _i5.PageRouteInfo<void> {
  const StartUp() : super(StartUp.name, path: '/');

  static const String name = 'StartUp';
}

/// generated route for
/// [_i2.Ocr]
class Ocr extends _i5.PageRouteInfo<void> {
  const Ocr() : super(Ocr.name, path: '/Ocr');

  static const String name = 'Ocr';
}

/// generated route for
/// [_i3.Mrz]
class Mrz extends _i5.PageRouteInfo<void> {
  const Mrz() : super(Mrz.name, path: '/Mrz');

  static const String name = 'Mrz';
}

/// generated route for
/// [_i4.ExcelList]
class ExcelList extends _i5.PageRouteInfo<void> {
  const ExcelList() : super(ExcelList.name, path: '/excel-list');

  static const String name = 'ExcelList';
}
