import 'package:flutter/material.dart';

import '../../screens/register/register_onbord_part.dart';

class ScreenUnAuthButtons extends StatelessWidget {
  const ScreenUnAuthButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account ?',
          style: Theme.of(context).textTheme.headline3!.copyWith(
            fontSize: 14,
            color: Colors.black54,
            shadows: [
              Shadow(
                offset: const Offset(1.0, 3.0),
                blurRadius: 4.0,
                color: Colors.grey.withAlpha(150),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterOnBordingScreen()));
          },
          child: Text(
            ' Register Now',
            style: Theme.of(context).textTheme.headline3!.copyWith(
              shadows: [
                Shadow(
                  offset: const Offset(1.0, 3.0),
                  blurRadius: 4.0,
                  color: Colors.grey.withAlpha(150),
                ),
              ],
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
