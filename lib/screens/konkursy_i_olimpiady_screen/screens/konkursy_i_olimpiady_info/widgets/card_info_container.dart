import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkursy_i_olimpiady_info/widgets/info_screen_texts.dart';

class CardInfoContainer extends StatelessWidget {
  const CardInfoContainer({
    Key? key,
    required this.cardTitle,
    required this.cardChildren,
  }) : super(key: key);

  final String cardTitle;
  final List<Widget> cardChildren;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(
            colors: [
              Color(0xff6A6493),
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cardTitleText(
                cardTitle,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: cardChildren,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
