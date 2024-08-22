import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data_sources/auth.dart';
import '../../data/models/user/user.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

final Auth _auth = Auth();

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<_Started>(_onStarted);
    on<_LoggedIn>(_onLoggedIn);
    on<_LoggedOut>(_onLoggedOut);
  }
}

Future<void> _onStarted(_Started event, Emitter<AuthState> emit) async {
  emit(const AuthState.loading());
  try {
    final checkToken = await _auth.checkToken();
    if (checkToken != null) {
      emit(AuthState.authenticated(
        user: checkToken,
      ));
    } else {
      emit(const AuthState.unauthenticated());
    }
  } catch (e) {
    emit(AuthState.error(e.toString()));
  }
}

Future<void> _onLoggedIn(_LoggedIn event, Emitter<AuthState> emit) async {
  emit(const AuthState.loading());
  try {
    final user = await _auth.login(event.email, event.password);
    emit(AuthState.authenticated(
      user: user,
    ));
  } catch (e) {
    emit(AuthState.error(e.toString()));
  }
}

Future<void> _onLoggedOut(_LoggedOut event, Emitter<AuthState> emit) async {
  emit(const AuthState.loading());
  try {
    await _auth.logout();
    emit(const AuthState.unauthenticated());
  } catch (e) {
    emit(AuthState.error(e.toString()));
  }
}
