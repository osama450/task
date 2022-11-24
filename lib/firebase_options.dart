// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDpQaxVtIf4PqusfgybLBPqFHj2iHjuFhE',
    appId: '1:577855778779:web:4fd42925fb3392d6cc01fe',
    messagingSenderId: '577855778779',
    projectId: 'task-51b0f',
    authDomain: 'task-51b0f.firebaseapp.com',
    storageBucket: 'task-51b0f.appspot.com',
    measurementId: 'G-JMBTHGZBFF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB5D1gJ7U6C3qfz1PttwIwQVowXLfdN6Pc',
    appId: '1:577855778779:android:76d780b5f0adc5d5cc01fe',
    messagingSenderId: '577855778779',
    projectId: 'task-51b0f',
    storageBucket: 'task-51b0f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDo3O6iRYv3saFwAUGHi8iZODfYW_Ez_Ks',
    appId: '1:577855778779:ios:8fcd27f7e9404d9acc01fe',
    messagingSenderId: '577855778779',
    projectId: 'task-51b0f',
    storageBucket: 'task-51b0f.appspot.com',
    iosClientId: '577855778779-1r2gojtv4igp8f3h3kb29c8tsu1dvbch.apps.googleusercontent.com',
    iosBundleId: 'com.example.task',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDo3O6iRYv3saFwAUGHi8iZODfYW_Ez_Ks',
    appId: '1:577855778779:ios:8fcd27f7e9404d9acc01fe',
    messagingSenderId: '577855778779',
    projectId: 'task-51b0f',
    storageBucket: 'task-51b0f.appspot.com',
    iosClientId: '577855778779-1r2gojtv4igp8f3h3kb29c8tsu1dvbch.apps.googleusercontent.com',
    iosBundleId: 'com.example.task',
  );
}