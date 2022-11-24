import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lets Sign you in',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 37,
              ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        SizedBox(
          width: size.width * 1,
          child: Text(
            'Welcome Back ,\nYou have been missed',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 28,
                ),
          ),
        ),
      ],
    );
  }
}
