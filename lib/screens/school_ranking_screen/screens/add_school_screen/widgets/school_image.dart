import 'package:flutter/material.dart';

class SchoolImage extends StatelessWidget {
  const SchoolImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: Image.asset(
        'images/screens/add_school_screen/school_img.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
