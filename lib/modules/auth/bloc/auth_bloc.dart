import 'package:bloc/bloc.dart';
import 'package:task/modules/auth/bloc/auth_event.dart';
import '../repository/auth_repository.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
   final AuthRepository _authRepository = AuthRepository();
    on<LoginWithGoogle>((event, emit) async {
      emit(AuthLoading());
      try {
       final user =  await _authRepository.signInWithGoogle();
        emit(AuthLoaded(user));
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });
    on<LoginWithFacebook>((event, emit) async {
      try {
        emit(AuthLoading());
        final user =  await _authRepository.signInWithFacebook();
        emit(AuthLoaded(user));
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });
  }
}
