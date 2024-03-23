import 'package:flutter/material.dart';
import 'package:pookaboo/shared/service/image_picker/image_picker_service.dart';

class ImageUploadForm extends StatefulWidget {
  const ImageUploadForm({super.key});

  @override
  _ImageUploadFormState createState() => _ImageUploadFormState();
}

class _ImageUploadFormState extends State<ImageUploadForm> {
  final ImagePickerService _pickerService = ImagePickerService();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
