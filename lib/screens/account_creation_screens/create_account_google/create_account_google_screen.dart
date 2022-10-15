import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/ca_more_info_screen.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatar_selector.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/cubits/avatar_selector_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/create_account_texts.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account_google/widgets/user_big_img.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';
import 'package:moje_miasto/theme.dart';

class CreateAccountGoogleScreen extends StatelessWidget {
  CreateAccountGoogleScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AvatarSelectorCubit(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(height: 20.0),
                        createAccountText(context),
                        const SizedBox(height: 20.0),
                        const FullWidthDivider(),
                        const SizedBox(height: 20.0),
                        const UserBigImg(),
                        const SizedBox(height: 20.0),
                        tellUsMoreText(context),
                        const SizedBox(height: 20.0),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              // Username Form
                              MyTextField(
                                myController: _usernameController,
                                fieldName: 'Nazwa Użytkownika',
                                myIcon: FontAwesomeIcons.solidCircleUser,
                                validator: Validators.validateUsername,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        const SelectAvatar(),
                        const SizedBox(height: 40.0),
                        BigElevatedButton(
                          text: 'Kontynuuj',
                          onTap: () {
                            // TODO: also validate avatar selector, or create a cubit with default first avatar
                            if (_formKey.currentState!.validate()) {
                              // TODO: navigate to CA Additional Informations Screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CAMoreInfoScreen(),
                                ),
                              );
                              debugPrint(
                                  'validation successfull, navigate to CA Additional Informations Screen');
                            } else {
                              debugPrint('ERROR validating create account!');
                            }
                          },
                        ),
                        const SizedBox(height: 30.0),
                        const SizedBox(height: 20.0),
                        bottomTosTexts(context),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
