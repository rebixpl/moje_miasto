import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/add_hobby_i_zainteresowania_confirmation_screen/add_hobby_i_zainteresowania_confirmation_screen.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/add_hobby_i_zainteresowania_screen/widgets/hobby_i_zgloszenie_img.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_confirmation_screen/add_help_entry_confirmation_screen.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_screen/widgets/add_help_entry_texts.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_screen/widgets/background_globus_image.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/add_school_screen_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_cubit.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_provider.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/image_picker.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';
import 'package:moje_miasto/theme.dart';

class AddHobbyIZainteresowaniaScreen extends StatelessWidget {
  AddHobbyIZainteresowaniaScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _descriptionController = TextEditingController();
  final _emailController = TextEditingController();

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
              GoBackButton(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              appBarTitleText(
                context,
                'dodaj ogłoszenie',
                fontSize: 24.0,
              ),
            ],
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: RepositoryProvider(
        create: (context) => ImagePickerRepository(),
        child: Builder(builder: (context) {
          final ImagePickerCubit imagePickerCubit = ImagePickerCubit(
            RepositoryProvider.of<ImagePickerRepository>(context),
          );

          return Stack(
            children: [
              Column(
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
                            const HobbyIZgloszenieImg(),
                            const SizedBox(height: 20.0),
                            descriptionAddSchoolText(context),
                            const SizedBox(height: 30.0),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  MyTextField(
                                    myController: _descriptionController,
                                    onChanged: (text) {},
                                    fieldName: 'Opis twojego ogłoszenia',
                                    myIcon: FontAwesomeIcons.pen,
                                    validator:
                                        Validators.validateHelpDescriptionText,
                                  ),
                                  MyTextField(
                                    myController: _emailController,
                                    onChanged: (text) {},
                                    fieldName: 'Adres e-mail do kontaktu',
                                    myIcon: FontAwesomeIcons.solidEnvelope,
                                    validator: Validators.validateEmail,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            const ImagePickerAS(),
                            const SizedBox(height: 40.0),
                            const SizedBox(
                              height: AppTheme.kBottomNavbarHeight,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
                  child: BigElevatedButton(
                    text: 'Wyślij Zgłoszenie',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AddHobbyIZainteresowaniaConfirmationScreen(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
