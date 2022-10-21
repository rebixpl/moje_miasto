import 'package:flutter/material.dart';

class BackgroundGlobusImage extends StatelessWidget {
  const BackgroundGlobusImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: Image.asset(
        'images/screens/add_help_entry_screen/globus_icon.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
