import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/models/models.dart';

// stores and gets data from local json file
class CityPickerCubit extends Cubit<List<City>> {
  CityPickerCubit() : super([]);

  getCities() async {
    debugPrint('.... getCities being called ....');

    int x = 0;
    final List<City> cities = [];
    final citiesJson = jsonDecode(
      await rootBundle.loadString(
          'lib/screens/account_creation_screens/ca_more_info/widgets/city_picker/data/cities.json'),
    );

    for (var el in (citiesJson as Iterable)) {
      x++;
      cities.add(City.fromJson(el));
    }

    debugPrint('.... now states will be emitted ....');

    emit(cities);
  }

  @override
  void onChange(Change<List<City>> change) {
    super.onChange(change);
    debugPrint('currentState: ${change.currentState}');
    debugPrint('nextState: ${change.nextState}');
  }
}

// stores currently selected city id
class CityPickerSelectionCubit extends Cubit<String> {
  // first id will be default and selected at the beginning
  CityPickerSelectionCubit() : super('');

// set new avatar image id
  void selectCityId(String newId) {
    final selectedCityId = newId;
    emit(selectedCityId);
  }

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint('currentState: ${change.currentState}');
    debugPrint('nextState: ${change.nextState}');
  }
}
