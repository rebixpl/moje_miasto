import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 50.0,
      child: MaterialButton(
        onPressed: onTap,
        color: AppTheme.kAccentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
