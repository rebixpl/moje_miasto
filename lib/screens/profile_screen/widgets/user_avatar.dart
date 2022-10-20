import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
    required this.avatar,
  }) : super(key: key);

  final Avatar avatar;

  final double baseRadius = 70.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: CircleAvatar(
        backgroundColor: const Color(0xff211A4C).withOpacity(0.3),
        radius: baseRadius + 10.0,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: baseRadius + 8.0,
          child: CircleAvatar(
            backgroundColor: const Color(0xff211A4C).withOpacity(0.3),
            radius: baseRadius + 2.0,
            child: CircleAvatar(
              radius: baseRadius,
              backgroundColor: Color(avatar.bgColor),
              backgroundImage: Image.asset(
                'images/screens/create_account/avatar_selector/${avatar.id}.png',
                fit: BoxFit.cover,
              ).image,
            ),
          ),
        ),
      ),
    );
  }
}
