import 'package:flutter/material.dart';
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
    List<String> testCities = [
      'Warszawa',
      'Lublin',
      'Kraków',
      'Łęczna',
      'Katowice',
      'Gdańsk',
      'Wrocław',
    ];

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
                itemCount: testCities.length,
                itemBuilder: (context, i) => InkWell(
                  borderRadius: BorderRadius.circular(10.0),
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: const Color(0xff211A4C).withOpacity(0.07),
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        testCities[i],
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
