import 'package:flutter/material.dart';

class RoundedCornersAdapter extends StatelessWidget {
  const RoundedCornersAdapter({
    Key? key,
    this.colorOutside = const Color(0xff8d89a5),
    this.colorInside = Colors.white,
  }) : super(key: key);

  final Color colorOutside;
  final Color colorInside;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: colorOutside,
        height: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: colorInside,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
