import 'package:flutter/material.dart';

Text usernameText(
  String text, {
  FontWeight fontWeight = FontWeight.bold,
}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: fontWeight,
      fontSize: 12.0,
    ),
  );
}
