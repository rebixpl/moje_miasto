import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/card_data.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/cubits/account_type_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatar_selector_texts.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class AccountTypeSelector extends StatefulWidget {
  const AccountTypeSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountTypeSelector> createState() => _AccountTypeSelectorState();
}

class _AccountTypeSelectorState extends State<AccountTypeSelector> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void _scroll() {
    _scrollController.animateTo(
      _scrollController.position.extentAfter,
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountTypeSelectorCubit, String?>(
      builder: (context, state) {
        final accountTypeSelectorCubit =
            context.read<AccountTypeSelectorCubit>();

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
                      onPressed: _scroll,
                      splashRadius: 16.0,
                      icon: const Icon(
                        FontAwesomeIcons.chevronLeft,
                        size: 16.0,
                      ),
                    ),
                    Text(
                      'jestem...'.titleCase,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                    IconButton(
                      onPressed: _scroll,
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
                height: 130.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                      controller: _scrollController,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        final CardData currentCard = cards[index];

                        return Row(
                          children: [
                            SizedBox(
                              height: 60.0,
                              width: 60.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(currentCard.photoUrl),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      // SinglePerson(
                      //   accountTypeSelectorCubit: accountTypeSelectorCubit,
                      //   index: index,
                      // ),
                      ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
