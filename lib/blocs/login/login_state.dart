part of 'login_cubit.dart';

@immutable
class LoginState {}

class LoginInitial extends LoginState {}

class Loading extends LoginState {}

class Loaded extends LoginState {
  final UserModel model;

  Loaded(this.model);
}

class Error extends LoginState {
  final String message;

  Error(this.message);
}
