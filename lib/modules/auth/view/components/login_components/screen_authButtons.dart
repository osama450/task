import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task/modules/home/screens/main_screen.dart';

class ScreenAuthButtons extends StatelessWidget {
  const ScreenAuthButtons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Forgot Password ?',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontSize: 15,
                      ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        MaterialButton(
          onPressed: () {
            var auth = FirebaseAuth.instance;
            auth.signInWithEmailAndPassword(email: 'osama@gmail.com', password: '123456').then((value){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> MainScreen(userCredential: value,)));
            });
            
          },
          color: const Color(0xff0F7BDD),
          child: Text(
            'Sign in',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  fontSize: 18,
                  color: Colors.white,
                ),
          ),
        ),
      ],
    );
  }
}
