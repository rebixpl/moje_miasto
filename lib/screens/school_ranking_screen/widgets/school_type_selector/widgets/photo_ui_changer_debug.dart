// this is temporary only to see changes while im making the ui layer, later the data will be pulled from the firebase
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/data/school_types.dart';

String debugPhotoChanger(String schoolType) {
  final String photoUrl;

  if (schoolType == schoolTypesSelectorList[0].id) {
    photoUrl =
        'images/screens/ca_more_info/account_type_selector/maly_przedsiebiorca.jpeg';
  } else if (schoolType == schoolTypesSelectorList[1].id) {
    photoUrl =
        'images/screens/ca_more_info/account_type_selector/obywatel.jpeg';
  } else if (schoolType == schoolTypesSelectorList[2].id) {
    photoUrl = 'images/screens/ca_more_info/account_type_selector/uczen.jpeg';
  } else {
    photoUrl =
        'images/screens/ca_more_info/account_type_selector/maly_przedsiebiorca.jpeg';
  }

  return photoUrl;
}
