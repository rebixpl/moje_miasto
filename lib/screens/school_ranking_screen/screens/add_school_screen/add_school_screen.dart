import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/add_school_screen_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/image_picker.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/school_type_picker/cubit/school_type_picker_cubit.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/school_type_picker/school_type_picker.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';
import 'package:moje_miasto/theme.dart';

class AddSchoolScreen extends StatelessWidget {
  AddSchoolScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _schoolNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const GoBackButton(),
              addSchoolText(context),
            ],
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: BlocProvider(
        create: (BuildContext context) => SchoolTypePickerCubit(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: AppTheme.kDefaultPadding,
                    left: AppTheme.kDefaultPadding,
                    right: AppTheme.kDefaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const FullWidthDivider(),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: 200.0,
                        child: Image.asset(
                          'images/screens/add_school_screen/school_img.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      descriptionAddSchoolText(context),
                      const SizedBox(height: 30.0),
                      MyTextField(
                        myController: _schoolNameController,
                        onChanged: (schoolName) {},
                        fieldName: 'Nazwa Szkoły',
                        myIcon: FontAwesomeIcons.pen,
                        validator: Validators.validateSchoolName,
                      ),
                      const SizedBox(height: 20.0),
                      const ImagePickerAS(),
                      const SizedBox(height: 30.0),
                      const SchoolTypePicker(),
                      const SizedBox(height: 30.0),
                      const SizedBox(height: AppTheme.kBottomNavbarHeight),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
