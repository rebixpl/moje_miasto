import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/login/widgets/thin_divider.dart';
import 'package:moje_miasto/theme.dart';

class FullWidthDivider extends StatelessWidget {
  const FullWidthDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        ThinDivider(
          color: AppTheme.kDividerColor.withOpacity(0.6),
        ),
      ],
    );
  }
}
