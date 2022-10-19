import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectImageBtn extends StatelessWidget {
  const SelectImageBtn({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: const Color(0xff6A6493).withOpacity(0.6),
        elevation: 0.0,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 24.0,
          ),
          child: Icon(
            FontAwesomeIcons.image,
            color: Colors.white,
            size: 26.0,
          ),
        ),
      ),
    );
  }
}
