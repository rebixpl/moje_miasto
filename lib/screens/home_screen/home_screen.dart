import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/home_screen/widgets/features_carousel_slider/features_carousel_slider.dart';
import 'package:moje_miasto/screens/home_screen/widgets/home_screen_appbar.dart';
import 'package:moje_miasto/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppbar(),
      body: Center(
          child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 10.0),
                  const FeaturesCarouselSlider(),
                  Padding(
                    padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
                    child: Column(
                      children: const [
                        Text('Home Screen'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
