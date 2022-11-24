import 'package:flutter/material.dart';
import 'package:task/modules/auth/view/screens/register/register_name_part.dart';
import 'package:task/modules/auth/view/widget/have_account_widget.dart';

class RegisterOnBordingScreen extends StatelessWidget {
  const RegisterOnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const HaveAccountWidget(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Registation in UDrive',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 28,
                      ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  width: size.width * 0.5,
                  child: Text(
                    'We can help you create an account in a few steps.',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 14,
                          color: Colors.black38,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterNamePartScreen()));
                  },
                  color: const Color(0xff0F7BDD),
                  child: Text(
                    'Start',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
