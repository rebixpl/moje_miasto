import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';

class HIZAppBar extends StatelessWidget {
  const HIZAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          GoBackButton(),
        ],
      ),
    );
  }
}
