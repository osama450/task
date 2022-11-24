import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
    MainScreen({super.key,required this.userCredential});
  UserCredential? userCredential;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hi , ${userCredential?.user?.email.toString()}',
          style: Theme.of(context).textTheme.headline3!.copyWith(
                fontSize: 20,
              ),
        ),
      ),
    );
  }
}
