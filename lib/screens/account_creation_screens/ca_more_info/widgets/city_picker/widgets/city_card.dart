import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/cubits/city_picker_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/models/models.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityPickerSelectionCubit, String>(
      builder: (context, state) {
        final cityPickerSelectionCubit =
            context.read<CityPickerSelectionCubit>();
        final String selectedCityId = cityPickerSelectionCubit.state;

        return GestureDetector(
          onTap: () {
            cityPickerSelectionCubit.selectCityId(city.cityId);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: selectedCityId == city.cityId
                  ? BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 2.0,
                    )
                  : BorderSide.none,
            ),
            color: const Color(0xff211A4C).withOpacity(0.07),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                city.cityName,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
