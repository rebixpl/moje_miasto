import 'dart:convert';

import 'package:diacritic/diacritic.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/cubits/city_picker_states.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/models/models.dart';

// stores and gets data from local json file
class CityPickerCubit extends Cubit<CityPickerState> {
  CityPickerCubit() : super(CPInitialState());

  getCities() async {
    debugPrint('.... getCities being called ....');
    emit(CPLoadingState());

    // ignore: unused_local_variable
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

    emit(CPLoadedState(cities, cities));
  }

  filterCities(String value) {
    final state = this.state;

    if (state is CPLoadedState) {
      try {
        final List<City> cities = [];
        cities.addAll(state.cities);

        List<String> citiesNames = [];

        for (City city in cities) {
          citiesNames.add(city.cityName);
        }

        // filter the cities list
        citiesNames.retainWhere((city) {
          // test for normal string with polish letters like ąźć
          if (city.toLowerCase().contains(value.toLowerCase())) {
            return true;
          }
          // test for string with polish letters like ą changed for a
          else if (removeDiacritics(city.toLowerCase())
              .contains(value.toLowerCase())) {
            return true;
          } else {
            return false;
          }
        });

        List<City> citiesFiltered = cities
            .where((city) => citiesNames.contains(city.cityName))
            .toList();

        // debugPrint('cities: $cities');
        // debugPrint('citiesFiltered: $citiesFiltered');

        emit(CPLoadedState(cities, citiesFiltered));
      } catch (_) {}
    }
  }

  // @override
  // void onChange(Change<CityPickerState> change) {
  //   super.onChange(change);
  //   debugPrint('currentState: ${change.currentState}');
  //   debugPrint('nextState: ${change.nextState}');
  // }
}

// stores currently selected city id
class CityPickerSelectionCubit extends Cubit<String> {
  // first id will be default and selected at the beginning
  CityPickerSelectionCubit() : super('1');

// set new avatar image id
  void selectCityId(String newId) => emit(newId);

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint(
        'CityPickerSelectionCubit - currentState: ${change.currentState}');
    debugPrint('CityPickerSelectionCubit - nextState: ${change.nextState}');
  }
}
