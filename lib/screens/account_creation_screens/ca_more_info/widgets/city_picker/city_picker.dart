import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/cubits/city_picker_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/models/models.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/widgets/city_card.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/widgets/city_picker_form.dart';

class CityPicker extends StatelessWidget {
  const CityPicker({
    Key? key,
    required TextEditingController cityNameController,
    required GlobalKey<FormState> formKey,
  })  : _cityNameController = cityNameController,
        _formKey = formKey,
        super(key: key);

  final TextEditingController _cityNameController;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CityPickerCubit>(
      create: (BuildContext context) {
        CityPickerCubit cityPickerCubit = CityPickerCubit();

        if (cityPickerCubit.state.isEmpty) {
          cityPickerCubit.getCities();
        }

        return cityPickerCubit;
      },
      child: BlocBuilder<CityPickerCubit, List<City>>(
        builder: (context, state) {
          if (state.isNotEmpty) {
            // cities loaded from json
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: const Color(0xff211A4C).withOpacity(0.07),
              elevation: 0.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CityPickerForm(
                            cityNameController: _cityNameController,
                            formKey: _formKey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 12.0,
                        right: 12.0,
                        left: 12.0,
                      ),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.length,
                        itemBuilder: (context, i) => CityCard(
                          cities: state,
                          index: i,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (state.isEmpty) {
            // loading data
            return const CircularProgressIndicator();
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
