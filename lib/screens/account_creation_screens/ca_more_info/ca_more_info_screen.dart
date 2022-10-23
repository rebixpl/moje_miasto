import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_bloc.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_events.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/account_type_selector.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/account_type_selector/cubits/account_type_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/ca_more_info_texts.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/city_picker.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/cubits/city_picker_cubit.dart';
import 'package:moje_miasto/screens/forgot_password/widgets/full_width_divider.dart';
import 'package:moje_miasto/screens/page_view_screen/page_view_screen.dart';
import 'package:moje_miasto/screens/login/widgets/big_elevated_button.dart';
import 'package:moje_miasto/theme.dart';

class CAMoreInfoScreen extends StatelessWidget {
  CAMoreInfoScreen({super.key});

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
      child: Builder(builder: (context) {
        final cityPickerSelectionCubit =
            context.read<CityPickerSelectionCubit>();
        final accountTypeSelectorCubit =
            context.read<AccountTypeSelectorCubit>();
        final userFSBloc = BlocProvider.of<UserFSBloc>(context);

        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(height: 20.0),
                          almostDoneText(context),
                          const SizedBox(height: 20.0),
                          const FullWidthDivider(),
                          const SizedBox(height: 20.0),
                          tellUsMoreAbYourselfText(context),
                          const SizedBox(height: 30.0),
                          const AccountTypeSelector(),
                          const SizedBox(height: 30.0),
                          CityPicker(
                            cityNameController: _cityNameController,
                            formKey: _formKey,
                          ),
                          const SizedBox(height: 30.0),
                          BigElevatedButton(
                            text: 'Kontynuuj',
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                // we do not need to validate pickers, because they can't
                                // be null
                                userFSBloc.add(
                                  UserFSAddCreateAccountMoreInfoDataToStateEvent(
                                    accountTypeSelectorCubit.state,
                                    cityPickerSelectionCubit.state,
                                  ),
                                );
                              }

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PageViewScreen(),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 30.0),
                          const SizedBox(height: 20.0),
                          bottomText(context),
                          const SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
