import 'package:flutter/material.dart';

class NoImageContainer extends StatelessWidget {
  const NoImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(20),
        ),
        height: double.infinity,
        child: Icon(
          Icons.camera_alt,
          color: Colors.grey[800],
          size: 40.0,
        ),
      ),
    );
  }
}
