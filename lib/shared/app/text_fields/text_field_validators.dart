class Validators {
  static String? validateEmail(String? value) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(p);

    if (value == null || value.isEmpty) {
      return 'Email nie może być pusty!';
    } else if (!regExp.hasMatch(value)) {
      return 'Błędny adres email!';
    }
    return null;
  }

  static String? validatePasswordLogin(String? value) {
    if (value == null || value.isEmpty) {
      return 'Hasło nie może być puste!';
    }
    return null;
  }
}
