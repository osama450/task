import 'package:bloc/bloc.dart';
import 'package:task/modules/auth/bloc/auth_event.dart';
import '../repository/auth_repository.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
   final AuthRepository _authRepository = AuthRepository();
    on<LoginWithGoogle>((event, emit) async {
      try {
        emit(AuthLoading());
        await _authRepository.signInWithGoogle().then((value) {
          emit(AuthLoaded(value));
        });
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });
    on<LoginWithFacebook>((event, emit) async {
      try {
        emit(AuthLoading());
        await _authRepository.signInWithFacebook().then((value) {
          emit(AuthLoaded(value));
        });
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });
  }


}
