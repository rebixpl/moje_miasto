import 'package:flutter/material.dart';

class UserBigImg extends StatelessWidget {
  const UserBigImg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.0,
      child: Image.asset(
        'images/screens/create_account/user_logo_big.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
