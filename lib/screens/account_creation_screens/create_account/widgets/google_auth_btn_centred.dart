import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/google_auth_button.dart';
import 'package:moje_miasto/screens/login/widgets/thin_divider.dart';

class GoogleAuthBtnCentred extends StatelessWidget {
  const GoogleAuthBtnCentred({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ThinDivider(),
        const SizedBox(width: 6.0),
        GoogleAuthButton(
          isWide: true,
          onTap: () {},
        ),
        const SizedBox(width: 6.0),
        const ThinDivider(),
      ],
    );
  }
}
