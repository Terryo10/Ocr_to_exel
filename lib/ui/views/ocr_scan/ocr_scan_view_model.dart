import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class OcrViewModel extends BaseViewModel {
  final String _title = 'Ocr View ';
  String get title => _title;

  navigateToStartUp(BuildContext context) {
    context.navigateNamedTo('/');
  }
}