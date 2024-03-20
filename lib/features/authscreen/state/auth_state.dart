part of 'auth_cubit.dart';

class AuthState {
  bool isAuthorized;

  AuthState({required this.isAuthorized});

  AuthState copyWith({bool? isAuthorized}) {
    return AuthState(isAuthorized: isAuthorized ?? this.isAuthorized);
  }
}
