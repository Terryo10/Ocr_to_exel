import 'package:flutter/material.dart';
import 'package:someproj/ui/views/startup/startup_view_model.dart';
import 'package:stacked/stacked.dart';

class StartUp extends StatelessWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      viewModelBuilder: () => StartUpViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: const Text('Scan App')),
        body: ListView(
          // padding: const EdgeInsets.all(8),
          children: <Widget>[
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                model.navigateToMrz(context);
              },
              child: Card(
                child: Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('MRZ Scan')),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                model.navigateToOcr(context);
              },
              child: Card(
                child: Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('OCR Scan')),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
