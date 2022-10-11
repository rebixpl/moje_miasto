class Validators {
  // TODO: CREATE CUSTOM VALIDATORS, I'VE IMPORTED THESE FROM MY QUIZ APP
  static String? validateTitle(String? value) {
    if (value == null || value.isEmpty) {
      return "Title can't be empty";
    } else if (value.length < 4) {
      return 'Title must be at least 4 characters long';
    } else if (value.length > 30) {
      return "Title can't be longer than 30 characters.";
    }
    return null;
  }

  static String? validateTitleQuiz(String? value) {
    if (value == null || value.isEmpty) {
      return "Title can't be empty";
    } else if (value.length < 4) {
      return 'Title must be at least 4 characters long';
    } else if (value.length > 30) {
      return "Title can't be longer than 60 characters.";
    }
    return null;
  }

  static String? validateQuestionText(String? value) {
    if (value == null || value.isEmpty) {
      return "Question can't be empty";
    } else if (value.length < 10) {
      return 'Question must be at least 10 characters long';
    } else if (value.length > 200) {
      return "Question can't be longer than 200 characters.";
    }
    return null;
  }

  static String? validateDescription(String? value) {
    if (value == null || value.isEmpty) {
      return "Description can't be empty";
    } else if (value.length < 20) {
      return 'Description must be at least 20 characters long';
    } else if (value.length > 200) {
      return "Description can't be longer than 200 characters.";
    }
    return null;
  }

  static String? validateDescriptionQuiz(String? value) {
    if (value == null || value.isEmpty) {
      return "Description can't be empty";
    } else if (value.length < 20) {
      return 'Description must be at least 20 characters long';
    } else if (value.length > 200) {
      return "Description can't be longer than 300 characters.";
    }
    return null;
  }

  static String? validateExternalImageLink(String? value) {
    if (value == null || value.isEmpty) {
      return "Image link can't be empty";
    }
    return null;
  }
}
