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
    apiKey: 'AIzaSyCR5afJK8uJs0hY8tcZ9dK8elAXTc0wB-M',
    appId: '1:714815486108:web:fc501fcad982e8bada9559',
    messagingSenderId: '714815486108',
    projectId: 'oxy-food-a898a',
    authDomain: 'oxy-food-a898a.firebaseapp.com',
    storageBucket: 'oxy-food-a898a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlMcLlMYMBtJtCw6y0V0Ori437b1IxgUc',
    appId: '1:714815486108:android:13012dd0b764ef00da9559',
    messagingSenderId: '714815486108',
    projectId: 'oxy-food-a898a',
    storageBucket: 'oxy-food-a898a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnXEfLIkEihkcQs2z0kI8dqELQVSFT78M',
    appId: '1:714815486108:ios:451e2c0bd6ab97ecda9559',
    messagingSenderId: '714815486108',
    projectId: 'oxy-food-a898a',
    storageBucket: 'oxy-food-a898a.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAnXEfLIkEihkcQs2z0kI8dqELQVSFT78M',
    appId: '1:714815486108:ios:07d10aae98f166afda9559',
    messagingSenderId: '714815486108',
    projectId: 'oxy-food-a898a',
    storageBucket: 'oxy-food-a898a.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
