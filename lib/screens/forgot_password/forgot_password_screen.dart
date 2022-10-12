import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/forgot_password_email_form.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/fp_screen_texts.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/lock_img.dart';
import 'package:moje_miasto/screens/forgot_password_confirmation/fp_confirmation_screen.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  resetPasswordText(context),
                  const SizedBox(height: 40.0),
                  lockImg(),
                  const SizedBox(height: 40.0),
                  const FullWidthDivider(),
                  const SizedBox(height: 40.0),
                  forgotPasswordText(context),
                  const SizedBox(height: 20.0),
                  forgotPasswordDescriptionText(context),
                  const SizedBox(height: 20.0),
                  ForgotPasswordEmailForm(
                    formKey: _formKey,
                    emailController: _emailController,
                  ),
                  const SizedBox(height: 20.0),
                  BigElevatedButton(
                    text: 'Dalej',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Wyslac prosbe o reset hasla na podany email
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FPConfirmationScreen(),
                          ),
                        );
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
