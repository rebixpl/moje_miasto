import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_provider.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  final ImagePickerRepository _imagePickerRepository;

  ImagePickerCubit(this._imagePickerRepository)
      : super(ImagePickerInitialize());

  void initializeCubitAgain() {
    emit(ImagePickerInitialize());
  }

  Future<void> takePhotoFromGallery() async {
    XFile? image;
    try {
      image = await _imagePickerRepository.takePhotoFromGallery();
      emit(ImagePickerSuccess(image));
    } catch (e) {
      emit(ImagePickerFailure('Error while picking image: ${e.toString()}'));
      log('Error while picking image from gallery: ${e.toString()}');
    }
  }

  Future<void> takePhotoFromCamera() async {
    XFile? image;
    try {
      image = await _imagePickerRepository.takePhotoFromCamera();
      emit(ImagePickerSuccess(image));
    } catch (e) {
      emit(ImagePickerFailure('Error while picking image: ${e.toString()}'));
      log('Error while picking image from camera: ${e.toString()}');
    }
  }
}
