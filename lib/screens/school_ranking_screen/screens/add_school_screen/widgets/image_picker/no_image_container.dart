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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.camera_alt,
                color: Colors.grey[800],
                size: 40.0,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Wybierz zdjęcie w tle aby przejść dalej',
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 126, 124, 136),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
