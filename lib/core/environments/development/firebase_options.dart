// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBcqLKleSc8zfOAn-e20i2j7O6tQHmwF5Q',
    appId: '1:332129513677:web:34b1a5fae5547af19c3984',
    messagingSenderId: '332129513677',
    projectId: 'test-dev-88ca1',
    authDomain: 'test-dev-88ca1.firebaseapp.com',
    storageBucket: 'test-dev-88ca1.appspot.com',
    measurementId: 'G-XLFCYTSC5X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAeNvqkjoLyD-XuXQsDSs4PcJVX90tLzo',
    appId: '1:332129513677:android:97e80dcb3b7744da9c3984',
    messagingSenderId: '332129513677',
    projectId: 'test-dev-88ca1',
    storageBucket: 'test-dev-88ca1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDX4qvcg0EXTAwWqGE2g_kVHICG6XKdoCw',
    appId: '1:332129513677:ios:7d7caa858a72e2269c3984',
    messagingSenderId: '332129513677',
    projectId: 'test-dev-88ca1',
    storageBucket: 'test-dev-88ca1.appspot.com',
    iosBundleId: 'com.example.verygoodcore.test-app.dev',
  );
}