import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class HIZFlexibleAppBar extends StatelessWidget {
  const HIZFlexibleAppBar({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String title;
  final String imageUrl;
  final double appBarHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imageUrl,
          ),
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.2),
            BlendMode.luminosity,
          ),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80.0,
                      child: Image.asset(
                        'images/screens/hobby_i_zainteresowania_screen/winning_cup_img.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      width: 260.0,
                      height: 100.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff152C4F),
                              Color(0xff211A4C),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 3.0,
                              spreadRadius: 0.0,
                              offset: Offset(1.0, 1.0),
                            )
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              title.allInCaps,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 20,
            decoration: const BoxDecoration(
              color: Color(0xff695ca6),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
