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
    } else if (RegExp(r'\s+\b|\b\s').hasMatch(value)) {
      return 'Hasło nie może zawierać spacji!';
    }
    return null;
  }

  static String? validatePasswordCreateAccount(String? value) {
    // String missings = "";
    if (value == null || value.isEmpty) {
      return 'Hasło nie może być puste!';
    } else if (value.length < 8) {
      return 'Hasło musi mieć minimum 8 znaków!';
    } else if (!RegExp('(?=.*[a-z])').hasMatch(value)) {
      return 'Hasło musi zawierać przynajmniej 1 małą literę!';
    } else if (!RegExp('(?=.*[A-Z])').hasMatch(value)) {
      return 'Hasło musi zawierać przynajmniej 1 dużą literę!';
    } else if (!RegExp(r'\d').hasMatch(value)) {
      return 'Hasło musi zawierać przynajmniej jedną cyfrę!';
    } else if (RegExp(r'\s+\b|\b\s').hasMatch(value)) {
      return 'Hasło nie może zawierać spacji!';
    }
    // else if (!RegExp((r'\W')).hasMatch(value)) {
    // return 'Hasło musi zawierać przynajmniej jeden symbol specjalny!';
    // }

    return null;
  }

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nazwa Użytkownika nie może być pusta!';
    } else if (value.length > 20) {
      return 'Dozwolone maksymalnie 20 znaków!';
    } else if (RegExp(r'\s+\b|\b\s').hasMatch(value)) {
      return 'Nazwa Użytkownika nie może zawierać spacji!';
    }
    return null;
  }

  static String? validateSchoolName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nazwa szkoły nie może być pusta!';
    } else if (value.length > 200) {
      return 'Dozwolone maksymalnie 200 znaków!';
    }
    return null;
  }

  static String? validateTeamNames(String? value) {
    if (value == null || value.isEmpty) {
      return 'Skład drużyny nie może być pusty!';
    } else if (value.length > 250) {
      return 'Dozwolone maksymalnie 250 znaków!';
    }
    return null;
  }

  static String? validateHelpDescriptionText(String? value) {
    if (value == null || value.isEmpty) {
      return 'Opis nie może być pusty!';
    } else if (value.length > 300) {
      return 'Dozwolone maksymalnie 300 znaków!';
    }
    return null;
  }

  static String? validateMobile(String? value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{9,12}$)';
    RegExp regExp = RegExp(patttern);

    if (value == null || value.isEmpty) {
      return 'Numer telefonu nie może być pusty!';
    } else if (value.isEmpty) {
      return 'Proszę wpisać numer telefonu!';
    } else if (!regExp.hasMatch(value)) {
      return 'Numer telefonu jest niepoprawny';
    }
    return null;
  }

  static String? validateTimeText(String? value) {
    if (value == null || value.isEmpty) {
      return 'Pole godziny nie może być puste!';
    } else if (value.length > 30) {
      return 'Dozwolone maksymalnie 30 znaków!';
    }
    return null;
  }

  static String? validateTitleText(String? value) {
    if (value == null || value.isEmpty) {
      return 'Pole tytuł nie może być puste!';
    } else if (value.length > 200) {
      return 'Dozwolone maksymalnie 200 znaków!';
    }
    return null;
  }
}
