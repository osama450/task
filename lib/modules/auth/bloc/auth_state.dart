
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState{
  const AuthState();
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthLoaded extends AuthState {
  final UserCredential covidModel;
  const AuthLoaded(this.covidModel);
}
class AuthError extends AuthState {
  final String? message;
  const AuthError(this.message);
}