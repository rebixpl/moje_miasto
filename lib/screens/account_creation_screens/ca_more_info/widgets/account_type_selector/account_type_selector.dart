import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/data/card_data.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/cubits/account_type_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/widgets/account_type_card.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/widgets/account_type_selector_texts.dart';

class AccountTypeSelector extends StatefulWidget {
  const AccountTypeSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountTypeSelector> createState() => _AccountTypeSelectorState();
}

class _AccountTypeSelectorState extends State<AccountTypeSelector> {
  late final PageController _pageViewController;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  void nextPage() {
    _pageViewController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn);
  }

  void previousPage() {
    _pageViewController.previousPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn);
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final accountTypeSelectorCubit = context.read<AccountTypeSelectorCubit>();

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: const Color(0xff211A4C).withOpacity(0.07),
      elevation: 0.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: previousPage,
                  splashRadius: 16.0,
                  icon: const Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 16.0,
                  ),
                ),
                accountTypeSelectorTitleText(context),
                IconButton(
                  onPressed: nextPage,
                  splashRadius: 16.0,
                  icon: const Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 16.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200.0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
                top: 10.0,
              ),
              child: PageView.builder(
                  controller: _pageViewController,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    final CardData currentCard = cards[index];

                    accountTypeSelectorCubit
                        .setAccountTypeId(currentCard.accountTypeId);

                    return AccountTypeCard(currentCard: currentCard);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
