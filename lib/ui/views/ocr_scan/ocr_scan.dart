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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            child: _scanButton(context, model),
          ),
        ),
      ),
    );
  }

  Widget _scanButton(BuildContext context, OcrViewModel model) {
    return InkWell(
      onTap: () {
        model.scanOcr(context);
     
      },
      child: Container(
        height: 5,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: const LinearGradient(
                begin: Alignment.centerLeft, end: Alignment.centerRight,
                // ignore: prefer_const_literals_to_create_immutables
                colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        child: const Text(
          'Scan',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

// tap scan 
