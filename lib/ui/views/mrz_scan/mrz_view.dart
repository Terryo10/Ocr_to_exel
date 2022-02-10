import 'package:flutter/material.dart';
import 'package:someproj/ui/views/mrz_scan/mrz_view_model.dart';
import 'package:stacked/stacked.dart';

class Mrz extends StatelessWidget {
  const Mrz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MrzViewModel>.reactive(
      viewModelBuilder: () => MrzViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Mrz Scan'),
        ),
       
        body: Center(
          child: Text(model.title),
        ),
      ),
    );
  }
}
