
abstract class AuthEvent{
  const AuthEvent();
}

class LoginWithGoogle extends AuthEvent {}

class LoginWithFacebook extends AuthEvent {}

