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
    apiKey: 'AIzaSyBJEw3UnWEOgW2d8Dcj0flej2Bp7fE_bQY',
    appId: '1:901210400233:web:920991fed780acb3a61778',
    messagingSenderId: '901210400233',
    projectId: 'alarmflutter-93dbc',
    authDomain: 'alarmflutter-93dbc.firebaseapp.com',
    storageBucket: 'alarmflutter-93dbc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNnjqPMdWmxd3hFz6ilp0RXvIo7EUdWG8',
    appId: '1:901210400233:android:e06092434238c9d2a61778',
    messagingSenderId: '901210400233',
    projectId: 'alarmflutter-93dbc',
    storageBucket: 'alarmflutter-93dbc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDbfHPbbXHAp1axylkNiOg2jh0mX0NMF8',
    appId: '1:901210400233:ios:58503a3d69435562a61778',
    messagingSenderId: '901210400233',
    projectId: 'alarmflutter-93dbc',
    storageBucket: 'alarmflutter-93dbc.appspot.com',
    iosBundleId: 'com.example.flutterAlarm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDDbfHPbbXHAp1axylkNiOg2jh0mX0NMF8',
    appId: '1:901210400233:ios:5cd372391ed76ab1a61778',
    messagingSenderId: '901210400233',
    projectId: 'alarmflutter-93dbc',
    storageBucket: 'alarmflutter-93dbc.appspot.com',
    iosBundleId: 'com.example.flutterAlarm.RunnerTests',
  );
}
