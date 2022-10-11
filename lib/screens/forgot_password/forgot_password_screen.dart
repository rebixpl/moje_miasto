import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/login/widgets/thin_divider.dart';
import 'package:moje_miasto/theme.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
