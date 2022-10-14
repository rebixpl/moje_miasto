import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/info/widgets/info_text.dart';
import 'package:moje_miasto/screens/info/widgets/info_title.dart';
import 'package:moje_miasto/screens/terms_of_service/widgets/tos_texts.dart';
import 'package:moje_miasto/theme.dart';

class TosScreen extends StatelessWidget {
  const TosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: GoBackButton(),
            ),
            appBarTitleText(),
          ],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FullWidthDivider(),
                    const SizedBox(height: 20.0),
                    paperSheetsIcon(),
                    const SizedBox(height: 20.0),
                    lastUpdateText(context),
                    const SizedBox(height: 20.0),
                    const FullWidthDivider(),
                    const SizedBox(height: 30.0),
                    const InfoTitle(
                      text: '1 - Zasady i Warunki',
                    ),
                    const SizedBox(height: 20.0),
                    const InfoText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti faucibus turpis non sem nec ullamcorper pharetra, non feugiat. Maecenas aliquam dictum fames natoque aenean ut porttitor a. Lobortis nunc risus lobortis ullamcorper dolor interdum dis. Lorem nam in eu mus donec id nunc etiam.',
                    ),
                    const SizedBox(height: 30.0),
                    const InfoTitle(
                      text: '2 - Polityka Prywatności',
                    ),
                    const SizedBox(height: 20.0),
                    const InfoText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti faucibus turpis non sem nec ullamcorper pharetra, non feugiat. Maecenas aliquam dictum fames natoque aenean ut porttitor a. Lobortis nunc risus lobortis ullamcorper dolor interdum dis. Lorem nam in eu mus donec id nunc etiam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Potenti faucibus turpis non sem nec ullamcorper pharetra, non feugiat. Maecenas aliquam dictum fames natoque aenean ut porttitor a. Lobortis nunc risus lobortis ullamcorper dolor interdum dis.',
                    ),
                    const SizedBox(height: 30.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Center paperSheetsIcon() {
    return Center(
      child: Image.asset(
        'images/screens/tos/paper_sheets_tos.png',
        width: 200.0,
      ),
    );
  }
}
