import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/account_type_selector.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/cubits/account_type_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/city_picker.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/cubits/city_picker_cubit.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/go_back_button.dart';
import 'package:moje_miasto/screens/home_screen/hs_settings_screen/widgets/hs_settings_page_texts.dart';
import 'package:moje_miasto/theme.dart';

class HomeScreenSettingsScreen extends StatelessWidget {
  HomeScreenSettingsScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _cityNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AccountTypeSelectorCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => CityPickerSelectionCubit(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Don't show the leading button
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const GoBackButton(),
                appBarTitleText(context),
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
                      const SizedBox(height: 20.0),
                      personaliseAppForYouText(context),
                      const SizedBox(height: 30.0),
                      const AccountTypeSelector(),
                      const SizedBox(height: 30.0),
                      CityPicker(
                        cityNameController: _cityNameController,
                        formKey: _formKey,
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
