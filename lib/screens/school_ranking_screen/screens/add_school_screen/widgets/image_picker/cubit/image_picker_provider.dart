import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagePickerRepository {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> takePhotoFromGallery() async {
    XFile? image = await _picker.pickImage(
        source: ImageSource.gallery, maxWidth: 1000.0, maxHeight: 1000.0);
    return image;
  }

  Future<XFile?> takePhotoFromCamera() async {
    XFile? image = await _picker.pickImage(
        source: ImageSource.camera, maxWidth: 1000.0, maxHeight: 1000.0);
    return image;
  }
}
