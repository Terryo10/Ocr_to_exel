import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'ocr_scan_view_model.dart';

class ExcelList extends StatelessWidget {
  const ExcelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OcrViewModel>.reactive(
      viewModelBuilder: () => OcrViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Ocr Scan'),
        ),
        body: ListView(
          // padding: const EdgeInsets.all(8),
          children: <Widget>[
            InkWell(
              onTap: () {
                model.navigateToOcr(context);
              },
              child: Card(
                child: Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Excel 1 ')),
                ),
              ),
            ),
            const SizedBox(height: 5),
            InkWell(
              onTap: () {
                model.navigateToOcr(context);
              },
              child: Card(
                child: Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Excel 2 ')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
