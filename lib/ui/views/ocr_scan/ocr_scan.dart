import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

import 'ocr_scan_view_model.dart';

class Ocr extends StatelessWidget {
  const Ocr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OcrViewModel>.reactive(
      viewModelBuilder: () => OcrViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Ocr Scan'),
        ),
        body: Center(
          child: Text(model.title),
        ),
      ),
    );
  }
}
