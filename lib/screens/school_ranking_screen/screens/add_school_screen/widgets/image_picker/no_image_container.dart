import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_cubit.dart';

class NoImageContainer extends StatelessWidget {
  final ImagePickerCubit cubit;

  const NoImageContainer({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => cubit.takePhotoFromGallery(),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(20),
          ),
          height: double.infinity,
          child: Icon(
            Icons.camera_alt,
            color: Colors.grey[800],
            size: 40.0,
          ),
        ),
      ),
    );
  }
}
