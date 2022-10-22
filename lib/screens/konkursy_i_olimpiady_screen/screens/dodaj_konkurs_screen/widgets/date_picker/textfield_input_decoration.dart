import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration({
  required String fieldName,
  required IconData myIcon,
}) {
  return InputDecoration(
    isDense: true,
    errorStyle: TextStyle(
      color: const Color(0xff211A4C).withOpacity(0.5),
      fontWeight: FontWeight.w500,
    ),
    labelText: fieldName,
    suffixIcon: IconButton(
      splashRadius: 1.0,
      disabledColor: const Color(0xff554F76),
      icon: Icon(myIcon),
      color: const Color(0xff554F76),
      onPressed: null,
      padding: const EdgeInsets.only(right: 10.0),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20.0),
    ),
    filled: true,
    fillColor: const Color(0xff211A4C).withOpacity(0.07),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xff554F76),
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(20.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xff554F76),
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(20.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xff211A4C),
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(20.0),
    ),
    labelStyle: TextStyle(
      color: const Color(0xff211A4C).withOpacity(0.5),
      fontWeight: FontWeight.w500,
    ),
  );
}
