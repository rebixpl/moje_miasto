import 'package:equatable/equatable.dart';
import 'package:moje_miasto/screens/account_creation_screens/ca_more_info/widgets/city_picker/models/models.dart';

abstract class CityPickerState extends Equatable {}

class CPInitialState extends CityPickerState {
  @override
  List<Object> get props => [];
}

class CPLoadingState extends CityPickerState {
  @override
  List<Object> get props => [];
}

class CPLoadedState extends CityPickerState {
  CPLoadedState(this.cities, this.citiesFiltered);

  final List<City> cities, citiesFiltered;

  @override
  List<Object> get props => [cities, citiesFiltered];
}
