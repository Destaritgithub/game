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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSbNmhVN5D4LPSkFdOxp8HUk7pWwXkpIo',
    appId: '1:660332942819:android:9e9a7eda0b300d0e93bcd6',
    messagingSenderId: '660332942819',
    projectId: 'mygame-febf8',
    databaseURL: 'https://mygame-febf8-default-rtdb.firebaseio.com',
    storageBucket: 'mygame-febf8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0jYa3SUdKukzXc5h7mKbJKqGmVA7nsPc',
    appId: '1:660332942819:ios:ff8c753f2df8bdec93bcd6',
    messagingSenderId: '660332942819',
    projectId: 'mygame-febf8',
    databaseURL: 'https://mygame-febf8-default-rtdb.firebaseio.com',
    storageBucket: 'mygame-febf8.appspot.com',
    iosClientId: '660332942819-vhkol49p99uad1t6ftu8v0s0vceo4cc9.apps.googleusercontent.com',
    iosBundleId: 'com.manyawkal.mygame',
  );
}