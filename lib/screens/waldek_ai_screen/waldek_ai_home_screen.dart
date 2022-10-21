import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/login/widgets/my_elevated_button.dart';
import 'package:moje_miasto/screens/page_view_screen/data/nav_screens_enum.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';

class WaldekAIHomeScreen extends StatelessWidget {
  const WaldekAIHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageViewNavCubit = context.read<PageViewNavCubit>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Waldek AI Chatbot'),
            const SizedBox(height: 20.0),
            MyElevatedButton(
              onPressed: () {
                pageViewNavCubit.onTap(
                  NavScreensEnum.waldekAiChatScreen.index,
                );
              },
              borderRadius: BorderRadius.circular(30.0),
              child: const Text('Wyślij wiadomość do Waldka'),
            ),
          ],
        ),
      ),
    );
  }
}
