import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/my_elevated_button.dart';

class BigElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BigElevatedButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyElevatedButton(
      onPressed: onTap,
      borderRadius: BorderRadius.circular(30.0),
      width: double.infinity,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
