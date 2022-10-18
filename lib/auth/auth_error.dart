import 'package:flutter/foundation.dart' show immutable;
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuthException;

const Map<String, AuthError> authErrorMapping = {
  'user-not-found': AuthErrorUserNotFound(),
  'weak-password': AuthErrorWeakPassword(),
  'invalid-email': AuthErrorInvalidEmail(),
  'operation-not-allowed': AuthErrorOperationNotAllowed(),
  'email-already-in-use': AuthErrorEmailAlreadyInUse(),
  'requires-recent-login': AuthErrorRequiresRecentLogin(),
  'no-current-user': AuthErrorNoCurrentUser(),
};

@immutable
abstract class AuthError {
  final String dialogTitle;
  final String dialogText;

  const AuthError({
    required this.dialogTitle,
    required this.dialogText,
  });

  factory AuthError.from(FirebaseAuthException exception) =>
      authErrorMapping[exception.code.toLowerCase().trim()] ??
      const AuthErrorUnknown();
}

@immutable
class AuthErrorUnknown extends AuthError {
  const AuthErrorUnknown()
      : super(
          dialogTitle: 'Błąd autoryzacji',
          dialogText: 'Nieznany błąd autoryzacji',
        );
}

// auth/no-current-user

@immutable
class AuthErrorNoCurrentUser extends AuthError {
  const AuthErrorNoCurrentUser()
      : super(
          dialogTitle: 'Brak aktualnego użytkownika!',
          dialogText:
              'Nie znaleziono aktualnego użytkownika z tymi informacjami!',
        );
}

// auth/requires-recent-login

@immutable
class AuthErrorRequiresRecentLogin extends AuthError {
  const AuthErrorRequiresRecentLogin()
      : super(
          dialogTitle: 'Wymaga ponownego logowania',
          dialogText:
              'Aby wykonać tę operację, musisz się wylogować i zalogować ponownie',
        );
}

// auth/operation-not-allowed

@immutable
class AuthErrorOperationNotAllowed extends AuthError {
  const AuthErrorOperationNotAllowed()
      : super(
          dialogTitle: 'Operacja nie jest zezwolona',
          dialogText: 'W tej chwili nie możesz zarejestrować się tą metodą!',
        );
}

// auth/user-not-found

@immutable
class AuthErrorUserNotFound extends AuthError {
  const AuthErrorUserNotFound()
      : super(
          dialogTitle: 'Użytkownik nie znaleziony',
          dialogText: 'Podany użytkownik nie został znaleziony na serwerze!',
        );
}

// auth/weak-password

@immutable
class AuthErrorWeakPassword extends AuthError {
  const AuthErrorWeakPassword()
      : super(
          dialogTitle: 'Słabe hasło',
          dialogText:
              'Wpisz silniejsze hasło składające się z większej liczby znaków!',
        );
}

// auth/invalid-email

@immutable
class AuthErrorInvalidEmail extends AuthError {
  const AuthErrorInvalidEmail()
      : super(
          dialogTitle: 'Niepoprawny adres e-mail',
          dialogText: 'Sprawdź dokładnie swój adres e-mail i spróbuj ponownie!',
        );
}

// auth/email-already-in-use

@immutable
class AuthErrorEmailAlreadyInUse extends AuthError {
  const AuthErrorEmailAlreadyInUse()
      : super(
          dialogTitle: 'E-mail jest już w użyciu!',
          dialogText: 'Wybierz inny adres e-mail do rejestracji!',
        );
}
