import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ImagePickerInitialize extends ImagePickerState {}

class ImagePickerSuccess extends ImagePickerState {
  final XFile? image;
  ImagePickerSuccess(this.image);

  @override
  List<Object?> get props => [image];
}

class ImagePickerFailure extends ImagePickerState {
  final String errorMessage;
  ImagePickerFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
