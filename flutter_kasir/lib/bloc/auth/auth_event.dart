part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.loggedIn() = _LoggedIn;

  const factory AuthEvent.loggedOut() = _LoggedOut;

  const factory AuthEvent.error(String message) = _Error;
}
