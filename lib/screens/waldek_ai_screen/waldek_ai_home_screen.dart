import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/login/widgets/my_elevated_button.dart';
import 'package:moje_miasto/screens/page_view_screen/data/nav_screens_enum.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';
import 'package:moje_miasto/theme.dart';

class WaldekAIHomeScreen extends StatelessWidget {
  const WaldekAIHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageViewNavCubit = context.read<PageViewNavCubit>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'WALDEK AI'.allInCaps,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: AppTheme.kDefaultPadding,
                  left: AppTheme.kDefaultPadding,
                  right: AppTheme.kDefaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const FullWidthDivider(),
                    const SizedBox(height: 40.0),
                    Text(
                      'Dzień Dobry 👋',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Cześć! Jestem sztuczną inteligencją, która pomoże ci we wszystkim co dotyczy tej aplikacji. Śmiało pytaj o co chcesz!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.normal,
                        fontSize: 13.0,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Container(
                      height: 200.0,
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
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Rozpocznij Konwersację',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.robot,
                                      color: Colors.white,
                                      size: 40.0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'WALDEK AI',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          SizedBox(height: 4.0),
                                          Text(
                                            'Chętnie ci pomogę 😄',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                MyElevatedButton(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffffffff),
                                      Color(0xffDADADA),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  onPressed: () {
                                    pageViewNavCubit.onTap(
                                      NavScreensEnum.waldekAiChatScreen.index,
                                    );
                                  },
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Text(
                                    'Wyślij wiadomość do Waldka',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    const SizedBox(height: AppTheme.kBottomNavbarHeight),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
