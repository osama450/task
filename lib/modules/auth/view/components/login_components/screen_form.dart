import 'package:flutter/material.dart';

class ScreenForm extends StatelessWidget {
  const ScreenForm({
    Key? key,
    required this.email,
    required this.password,
    required this.size,
  }) : super(key: key);

  final TextEditingController email;
  final TextEditingController password;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: email,
          decoration: InputDecoration(
            hintText: 'Email ,phone & username',
            hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 16,
                  color: Colors.black54,
                ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        TextFormField(
          controller: password,
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 16,
                  color: Colors.black54,
                ),
          ),
        ),
      ],
    );
  }
}
