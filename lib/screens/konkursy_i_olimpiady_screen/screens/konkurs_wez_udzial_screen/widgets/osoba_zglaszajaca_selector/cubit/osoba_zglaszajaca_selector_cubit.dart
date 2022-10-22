import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/konkursy_i_olimpiady_screen/screens/konkurs_wez_udzial_screen/widgets/osoba_zglaszajaca_selector/data/data.dart';

class OsobaZglaszajacaSelectorCubit extends Cubit<String> {
  OsobaZglaszajacaSelectorCubit() : super(osobyZglaszajace[0].id);

// set new avatar image id
  void selectPersonId(String newId) => emit(newId);

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    debugPrint(
        'OsobaZglaszajacaSelectorCubit - currentState: ${change.currentState}');
    debugPrint(
        'OsobaZglaszajacaSelectorCubit - nextState: ${change.nextState}');
  }
}
