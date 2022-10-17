import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class SRSliverAppBarWidget extends StatelessWidget {
  const SRSliverAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'najlepsze szkoły'.allInCaps,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      expandedHeight: 400.0,
      pinned: true,
      elevation: 0.0,
      flexibleSpace: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff211A4C),
              Color(0xff8d89a5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
