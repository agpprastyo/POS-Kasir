part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticated({required User user}) = _Authenticated;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.error(String? message) = _ErrorState;
}
