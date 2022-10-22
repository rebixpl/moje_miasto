import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_action_confirmation_screen/konkurs_action_confirmation_screen.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/background_cup_image.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/osoba_zglaszajaca_selector/cubit/osoba_zglaszajaca_selector_cubit.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/osoba_zglaszajaca_selector/osoba_zglaszajaca_selector.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/wez_udzial_forms.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/wez_udzial_screen_texts.dart';
import 'package:moje_miasto/screens/korepetycje_i_pomoc_screen/screens/add_help_entry_screen/widgets/add_help_entry_texts.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/theme.dart';

class KonkursWezUdzialScreen extends StatelessWidget {
  KonkursWezUdzialScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _schoolNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _teamNamesController = TextEditingController();
  final _phoneNumberController = TextEditingController();

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
                'weź udział',
                fontSize: 34.0,
              ),
            ],
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: BlocProvider(
        create: (BuildContext context) => OsobaZglaszajacaSelectorCubit(),
        child: Builder(builder: (context) {
          final OsobaZglaszajacaSelectorCubit osobaZglaszajacaSelectorCubit =
              context.read<OsobaZglaszajacaSelectorCubit>();

          return Builder(builder: (context) {
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
                              competitionNameText(context,
                                  'XVII olimpiada informatyczna juniorów'),
                              const SizedBox(height: 30.0),
                              WezUdzialForms(
                                formKey: _formKey,
                                schoolNameController: _schoolNameController,
                                teamNamesController: _teamNamesController,
                                phoneNumberController: _phoneNumberController,
                                emailController: _emailController,
                              ),
                              const SizedBox(height: 20.0),
                              const OsobaZglaszajacaSelector(),
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
                                  const KonkursActionConfirmationScreen(
                                title: 'weź udział',
                                description:
                                    'Organizator konkursu skontaktuje się z tobą w przypadku potrzeby więcej informacji.',
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            );
          });
        }),
      ),
    );
  }
}
