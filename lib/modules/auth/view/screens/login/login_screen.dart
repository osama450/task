import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/modules/auth/bloc/auth_bloc.dart';
import 'package:task/modules/auth/bloc/auth_state.dart';
import 'package:task/modules/auth/view/components/login_components/screen_authButtons.dart';
import 'package:task/modules/auth/view/components/login_components/screen_form.dart';
import 'package:task/modules/auth/view/components/login_components/screen_socialLogin.dart';
import 'package:task/modules/auth/view/components/login_components/screen_title.dart';
import 'package:task/modules/auth/view/components/login_components/screen_unAuthButtons.dart';
import 'package:task/modules/home/screens/main_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthLoading) {
          showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                content: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
          );
        }
        if (state is AuthLoaded) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => MainScreen(
                userCredential: state.covidModel,
              ),
            ),
          );
        }
        if (state is AuthError) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message.toString())));
        }
      },
      builder: (BuildContext context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: ListView(
                children: [
                  ScreenTitle(size: size),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  ScreenForm(email: email, password: password, size: size),
                  SizedBox(
                    height: size.height * 0.007,
                  ),
                  ScreenAuthButtons(size: size),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  ScreenSocialLogin(size: size),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const ScreenUnAuthButtons()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
