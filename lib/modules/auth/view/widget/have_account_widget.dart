import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/modules/auth/view/screens/login/login_screen.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
          width: 0.5,
        ),
      ),
      child: CupertinoButton(
        child: Text(
          'Are you already registered with UDrive ?',
          style: Theme.of(context).textTheme.headline3!.copyWith(
                fontSize: 13,
                color: Colors.blue,
              ),
        ),
        onPressed: () {
          Navigator.popUntil(context, (route) => false);
          Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
        },
      ),
    );
  }
}
