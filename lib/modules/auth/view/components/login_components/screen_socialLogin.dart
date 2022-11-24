import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/const/resource.dart';
import 'package:task/modules/auth/bloc/auth_event.dart';
import 'package:task/modules/auth/repository/auth_repository.dart';
import 'package:task/modules/home/screens/main_screen.dart';

import '../../../bloc/auth_bloc.dart';

class ScreenSocialLogin extends StatefulWidget {
  const ScreenSocialLogin({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<ScreenSocialLogin> createState() => _ScreenSocialLoginState();
}

final AuthBloc authBloc = AuthBloc();

class _ScreenSocialLoginState extends State<ScreenSocialLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Expanded(
                child: Divider(
                  color: Colors.black54,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'or',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const Expanded(
                child: Divider(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: widget.size.height * 0.0250,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  authBloc.add(LoginWithGoogle());
                },
                child: SvgPicture.asset(Assets.ASSETS_GOOGLE_LOGO_PNG)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                  onTap: (){
                    authBloc.add(LoginWithFacebook());
                  },
                  child: SvgPicture.asset(Assets.ASSETS_FACEBOOK_LOGO_PNG)),
            ),
            SvgPicture.asset(Assets.ASSETS_APPLE_LOGO_PNG),
          ],
        ),
      ],
    );
  }
}
