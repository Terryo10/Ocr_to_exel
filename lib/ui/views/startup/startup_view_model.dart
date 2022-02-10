import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class StartUpViewModel extends BaseViewModel {
  final String _title = 'Start View ';
  String get title => '$_title $counter';

  int counter = 0;

  incrementCounter() {
    counter++;
    notifyListeners();
  }

  navigateToHomePage(BuildContext context) {
    context.navigateNamedTo('/');
  }

  navigateToMrz(BuildContext context) {
    context.navigateNamedTo('/Mrz');
  }

  navigateToOcr(BuildContext context) {
    context.navigateNamedTo('/Ocr');
  }
}
