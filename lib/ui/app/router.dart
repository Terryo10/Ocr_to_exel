import 'package:auto_route/annotations.dart';
import 'package:someproj/ui/views/mrz_scan/mrz_view.dart';
import 'package:someproj/ui/views/ocr_scan/ocr_scan.dart';

import '../views/ocr_scan/excel_documents_list.dart';
import '../views/startup/startup_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: StartUp, initial: true),
    AutoRoute(page: Ocr),
    AutoRoute(page: Mrz),
    AutoRoute(page: ExcelList)
  ],
)
class $AppRouter {}
