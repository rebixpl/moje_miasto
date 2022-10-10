import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

class ThinDivider extends StatelessWidget {
  const ThinDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        height: 4.0,
        thickness: 2.0,
        color: AppTheme.kDividerColor,
      ),
    );
  }
}
