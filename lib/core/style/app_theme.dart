import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    textTheme: lightTextTheme,
    primaryColor: Colors.black,
    inputDecorationTheme: InputDecorationTheme(
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(
          color: Colors.black38,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(
          color: Colors.black38,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(
          color: Colors.black38,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      minWidth: double.infinity,
      height: 50,
    ));

const TextTheme lightTextTheme = TextTheme(
  headline1: _headline1,
  headline2: _headline2,
  headline3: _headline3,
  headline4: _headline4,
);

const TextStyle _headline1 = TextStyle(color: Colors.black, fontFamily: 'Bold', fontWeight: FontWeight.bold);

const TextStyle _headline2 = TextStyle(color: Colors.black, fontFamily: 'Light');

const TextStyle _headline3 = TextStyle(color: Colors.black, fontFamily: 'Medium');

const TextStyle _headline4 = TextStyle(color: Colors.black, fontFamily: 'Regular');
