import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/modules/auth/bloc/auth_event.dart';
import 'package:task/modules/auth/view/components/login_components/screen_authButtons.dart';
import 'package:task/modules/auth/view/components/login_components/screen_form.dart';
import 'package:task/modules/auth/view/components/login_components/screen_socialLogin.dart';
import 'package:task/modules/auth/view/components/login_components/screen_title.dart';
import 'package:task/modules/auth/view/components/login_components/screen_unAuthButtons.dart';
import 'package:task/modules/home/screens/main_screen.dart';

import '../../../bloc/auth_bloc.dart';
import '../../../bloc/auth_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthBloc authBloc = AuthBloc();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocProvider(
        create: (_) => authBloc,
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthLoaded) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>
                          MainScreen(userCredential: state.covidModel)));
            }
          },
          child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
            );
          }),
        ),
      ),
    );
  }
}
