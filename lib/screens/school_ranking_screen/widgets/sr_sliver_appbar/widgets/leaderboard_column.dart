import 'package:flutter/material.dart';

class LeaderboardColumn extends StatelessWidget {
  final int place;
  final double height;

  const LeaderboardColumn({
    Key? key,
    required this.place,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff152C4F),
            Color(0xff211A4C),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Center(
        child: Text(
          place.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 60.0,
          ),
        ),
      ),
    );
  }
}
