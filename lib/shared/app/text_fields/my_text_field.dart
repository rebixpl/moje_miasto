import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
    required this.myController,
    required this.fieldName,
    required this.myIcon,
    this.prefixIconColor = const Color(0xff554F76),
    this.focusedColor = const Color(0xff554F76),
    this.textColor = const Color(0xff211A4C),
    required this.validator,
    this.errorColor = const Color(0xff554F76),
    this.fillColor = const Color(0xff211A4C),
    this.focusedErrorBorderColor = const Color(0xff211A4C),
    this.obscureText = false,
    VoidCallback? suffixIconPressed,
    this.isSuffixButtonActive = false,
    this.onChanged,
    this.isEmail = false,
  }) : suffixIconPressed = suffixIconPressed ?? (() {});

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final bool isEmail;
  final Color prefixIconColor,
      focusedColor,
      textColor,
      errorColor,
      focusedErrorBorderColor,
      fillColor;
  final String? Function(String?) validator;
  final VoidCallback suffixIconPressed;
  final bool obscureText, isSuffixButtonActive;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        // autofocus: true,
        obscureText: obscureText,
        keyboardType: isEmail ? TextInputType.emailAddress : null,
        onChanged: onChanged,
        obscuringCharacter: '●',
        validator: validator,
        controller: myController,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.secondary,
        ),
        decoration: _textFormFieldDecoration(),
      ),
    );
  }

  InputDecoration _textFormFieldDecoration() {
    return InputDecoration(
      isDense: true,
      errorStyle: TextStyle(
        color: textColor.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      ),
      labelText: fieldName,
      suffixIcon: IconButton(
        splashRadius: 1.0,
        disabledColor: prefixIconColor,
        icon: Icon(myIcon),
        color: prefixIconColor,
        onPressed: isSuffixButtonActive ? suffixIconPressed : null,
        padding: const EdgeInsets.only(right: 10.0),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20.0),
      ),
      filled: true,
      fillColor: fillColor.withOpacity(0.07),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: focusedColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: errorColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: focusedErrorBorderColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      labelStyle: TextStyle(
        color: textColor.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
