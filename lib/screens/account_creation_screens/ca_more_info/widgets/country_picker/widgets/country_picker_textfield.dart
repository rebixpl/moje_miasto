import 'package:flutter/material.dart';

class CountryPickerTextField extends StatelessWidget {
  const CountryPickerTextField({
    super.key,
    required this.myController,
    required this.fieldName,
    required this.myIcon,
    this.prefixIconColor = const Color(0xff554F76),
    this.focusedColor = const Color(0xff554F76),
    this.textColor = const Color(0xff211A4C),
    this.fillColor = const Color(0xff211A4C),
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor, focusedColor, textColor, fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.secondary,
        fontSize: 14.0,
      ),
      decoration: _textFormFieldDecoration(),
    );
  }

  InputDecoration _textFormFieldDecoration() {
    return InputDecoration(
      // isDense: true,
      errorStyle: TextStyle(
        color: textColor.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      ),
      hintText: fieldName,
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Icon(
          myIcon,
          color: prefixIconColor,
        ),
      ),

      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10.0),
      ),
      filled: true,
      fillColor: fillColor.withOpacity(0.07),
      labelStyle: TextStyle(
        color: textColor.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
