import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/my_elevated_button.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class WezUdzialButton extends StatelessWidget {
  const WezUdzialButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MyElevatedButton(
      width: double.infinity,
      height: 60.0,
      onPressed: onTap,
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffFF9975),
          Color(0xffa05e65),
        ],
      ),
      borderRadius: BorderRadius.circular(30.0),
      child: _wezUdzialText(),
    );
  }

  Text _wezUdzialText() {
    return Text(
      'weź udział'.allInCaps,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 22.0,
      ),
    );
  }
}
