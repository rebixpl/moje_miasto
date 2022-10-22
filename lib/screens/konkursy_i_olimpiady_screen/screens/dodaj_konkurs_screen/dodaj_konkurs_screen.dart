import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/dodaj_konkurs_screen/widgets/date_picker/date_picker.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/dodaj_konkurs_screen/widgets/dodaj_konkurs_forms.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/dodaj_konkurs_screen/widgets/time_picker/time_picker.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_action_confirmation_screen/konkurs_action_confirmation_screen.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/background_cup_image.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_screen/widgets/add_help_entry_texts.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/add_school_screen_texts.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_cubit.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_provider.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/cubit/image_picker_state.dart';
import 'package:moje_miasto/screens/school_ranking_screen/screens/add_school_screen/widgets/image_picker/image_picker.dart';
import 'package:moje_miasto/theme.dart';

class DodajKonkursScreen extends StatelessWidget {
  DodajKonkursScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _schoolNameController = TextEditingController();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

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
                'dodaj konkurs',
                fontSize: 28.0,
              ),
            ],
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: RepositoryProvider(
        create: (context) => ImagePickerRepository(),
        child: BlocProvider(
          create: (context) => ImagePickerCubit(
            RepositoryProvider.of<ImagePickerRepository>(context),
          ),
          child: Builder(builder: (context) {
            final ImagePickerCubit imagePickerCubit =
                context.read<ImagePickerCubit>();

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
                              const SizedBox(height: 30.0),
                              const BackgroundCupImage(),
                              const SizedBox(height: 30.0),
                              descriptionAddSchoolText(context),
                              const SizedBox(height: 30.0),
                              DodajKonkursForms(
                                formKey: _formKey,
                                titleController: _titleController,
                                descriptionController: _descriptionController,
                                schoolNameController: _schoolNameController,
                              ),
                              const SizedBox(height: 30.0),
                              const DatePicker(
                                fieldName: 'Zapisy do',
                                myIcon: FontAwesomeIcons.solidCalendarDays,
                              ),
                              const SizedBox(height: 30.0),
                              const ImagePickerAS(),
                              const SizedBox(height: 30.0),
                              const DatePicker(
                                fieldName: 'Data Rozpoczęcia',
                                myIcon: FontAwesomeIcons.solidCalendarDays,
                              ),
                              const SizedBox(height: 30.0),
                              const TimePicker(
                                fieldName: 'Godzina Rozpoczęcia Konkursu',
                                myIcon: FontAwesomeIcons.clock,
                              ),
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
                          debugPrint(imagePickerCubit.state.toString());
                          if (imagePickerCubit.state is ImagePickerSuccess) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const KonkursActionConfirmationScreen(
                                  title: 'dodaj konkurs',
                                  description:
                                      'Teraz administrator sprawdzi twoje zgłoszenie i jeśli jest poprawne je zaakceptuje',
                                ),
                              ),
                            );
                          }
                        }
                      },
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
