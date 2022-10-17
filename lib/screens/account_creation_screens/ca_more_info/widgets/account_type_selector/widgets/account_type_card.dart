import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/data/card_data.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/widgets/account_type_selector_texts.dart';

class AccountTypeCard extends StatelessWidget {
  const AccountTypeCard({
    Key? key,
    required this.currentCard,
  }) : super(key: key);

  final CardData currentCard;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(currentCard.photoUrl),
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
              Center(
                child: Icon(
                  currentCard.cardIcon,
                  size: 60.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cardTitleText(currentCard.cardTitle, context),
              const SizedBox(height: 4.0),
              weWillHelpYouWithText(context),
              const SizedBox(height: 2.0),
              contextText(currentCard.contentText1, context),
              const SizedBox(height: 2.0),
              contextText(currentCard.contentText2, context),
              const SizedBox(height: 2.0),
              contextText(currentCard.contentText3, context),
            ],
          ),
        ),
      ],
    );
  }
}
