import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

class OcrViewModel extends BaseViewModel {
  final String _title = 'Ocr View ';
  String get title => _title;

  navigateToStartUp(BuildContext context) {
    context.navigateNamedTo('/');
  }

  navigateToOcr(BuildContext context) {
    context.navigateNamedTo('/Ocr');
  }

  Future scanOcr(BuildContext context) async {
    //  final text
    print('ready to scan');
    // imagePicker
  }

  Future imagePicker() async {
    File image;
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.getImage(
        source: ImageSource.gallery,
        imageQuality: 80,
        maxHeight: 400,
        maxWidth: 400);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      return image;
    } else {
      return 'No image found';
    }
  }
}
