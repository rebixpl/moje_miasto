import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/screens/login/widgets/thin_divider.dart';
import 'package:moje_miasto/shared/app/text_fields/my_text_field.dart';
import 'package:moje_miasto/shared/app/text_fields/text_field_validators.dart';
import 'package:moje_miasto/theme.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  GoBackButton(),
                ],
              ),
              const Spacer(),
              // TODO: 12 October >>> Clean this screen UI, export widgets
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  Text(
                    'Reset Hasła',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 40.0),
                  SizedBox(
                    width: 130.0,
                    child: Image.asset(
                      'images/screens/forgot_password_screen/lock_img.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      ThinDivider(
                        color: AppTheme.kDividerColor.withOpacity(0.6),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    'Zapomniałeś Hasło?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: 340.0,
                    child: Text(
                      'Wpisz adres email, który został użyty do utworzenia konta. Na ten adres zostaną wysłane instrukcje dotyczące resetu hasła.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        MyTextField(
                          myController: _emailController,
                          fieldName: 'Email',
                          myIcon: FontAwesomeIcons.solidEnvelope,
                          validator: Validators.validateEmail,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  BigElevatedButton(
                    text: 'Dalej',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Wyslac prosbe o reset hasla na podany email

                      }
                    },
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
