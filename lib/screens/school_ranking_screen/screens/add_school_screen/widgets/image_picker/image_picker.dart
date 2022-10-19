import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_cubit.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_provider.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_state.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/image_picker_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/no_image_container.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/select_image_btn.dart';

class ImagePickerAS extends StatefulWidget {
  const ImagePickerAS({
    Key? key,
  }) : super(key: key);

  @override
  State<ImagePickerAS> createState() => _ImagePickerASState();
}

class _ImagePickerASState extends State<ImagePickerAS> {
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ImagePickerRepository(),
      child: Builder(builder: (context) {
        ImagePickerCubit cubit = ImagePickerCubit(
          RepositoryProvider.of<ImagePickerRepository>(context),
        );

        return SizedBox(
          width: double.infinity,
          height: 120.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: const Color(0xff211A4C).withOpacity(0.07),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      selectImageText(context),
                      const SizedBox(height: 10.0),
                      SelectImageBtn(
                        onTap: () => cubit.takePhotoFromGallery(),
                      ),
                    ],
                  ),
                  BlocBuilder<ImagePickerCubit, ImagePickerState>(
                    bloc: cubit,
                    builder: (context, state) {
                      if (state is ImagePickerInitialize) {
                        return const NoImageContainer();
                      }
                      if (state is ImagePickerSuccess) {
                        _image = state.image;
                        if (_image == null) {
                          return const NoImageContainer();
                        } else {
                          return Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.file(
                                    File(_image!.path),
                                  ).image,
                                ),
                              ),
                            ),
                          );
                        }
                      }
                      if (state is ImagePickerFailure) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(state.errorMessage),
                          ),
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
