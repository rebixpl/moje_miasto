import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class SnackbarButton extends StatelessWidget {
  const SnackbarButton({
    Key? key,
    required this.onTap,
    this.buttonTypeYesOrNo = true,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool buttonTypeYesOrNo;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 110.0,
      onPressed: onTap,
      color:
          buttonTypeYesOrNo ? AppTheme.kAccentColor : const Color(0xffDADADA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: _buttonText(buttonTypeYesOrNo ? 'tak' : 'anuluj'),
    );
  }

  Text _buttonText(String text) {
    return Text(
      text.allInCaps,
      style: TextStyle(
        color: buttonTypeYesOrNo ? Colors.white : Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 12.0,
      ),
    );
  }
}
