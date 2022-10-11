import 'package:flutter/material.dart';
import 'package:moje_miasto/theme.dart';

class ThinDivider extends StatelessWidget {
  final Color color;

  const ThinDivider({
    Key? key,
    this.color = AppTheme.kDividerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        height: 4.0,
        thickness: 2.0,
        color: color,
      ),
    );
  }
}
