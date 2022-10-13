import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/theme.dart';

class CAMoreInfoScreen extends StatelessWidget {
  const CAMoreInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Text(
                        '👀 już prawie...'.toUpperCase(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const FullWidthDivider(),
                      const SizedBox(height: 20.0),
                      Text(
                        'Powiedz nam coś więcej o sobie 😀',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                      ),
                      const SizedBox(height: 20.0),
                      const SizedBox(height: 20.0),
                      const SizedBox(height: 40.0),
                      BigElevatedButton(
                        text: 'Kontynuuj',
                        onTap: () {
                          // TODO: Validate user selection and navigate to Home Screen
                        },
                      ),
                      const SizedBox(height: 30.0),
                      const SizedBox(height: 20.0),
                      Text(
                        'Zależnie od wybranych opcji funkcje aplikacji będą się różnić',
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 9.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
