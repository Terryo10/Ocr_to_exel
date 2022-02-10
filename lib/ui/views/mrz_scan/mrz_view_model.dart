import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class MrzViewModel extends BaseViewModel {
  final String _title = 'MRZ View ';
  String get title => '$_title $counter';
  int counter = 0;

  incrementCounter() {
    counter++;
    notifyListeners();
  }

  navigateToStartUp(BuildContext context) {
    context.navigateNamedTo('/');
  }
}
