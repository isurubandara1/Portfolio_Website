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
    apiKey: 'AIzaSyDZjgYbj7THEDqwpSGviMWqUW1yDCyXWE4',
    appId: '1:388155472247:web:7111ecb0488fac999ac972',
    messagingSenderId: '388155472247',
    projectId: 'protfolio-3f81e',
    authDomain: 'protfolio-3f81e.firebaseapp.com',
    storageBucket: 'protfolio-3f81e.appspot.com',
    measurementId: 'G-HRGFD4PZE2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCn-zWtjt63Scb9uhZ8MkmshAUg_Acm_j4',
    appId: '1:388155472247:android:0a34abcf4cb980a69ac972',
    messagingSenderId: '388155472247',
    projectId: 'protfolio-3f81e',
    storageBucket: 'protfolio-3f81e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjJ2Q1k_lThV5AInGZQ-64IyfgfVpPu78',
    appId: '1:388155472247:ios:d109640d697c3e379ac972',
    messagingSenderId: '388155472247',
    projectId: 'protfolio-3f81e',
    storageBucket: 'protfolio-3f81e.appspot.com',
    iosBundleId: 'com.example.protfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjJ2Q1k_lThV5AInGZQ-64IyfgfVpPu78',
    appId: '1:388155472247:ios:1896b929ca7400649ac972',
    messagingSenderId: '388155472247',
    projectId: 'protfolio-3f81e',
    storageBucket: 'protfolio-3f81e.appspot.com',
    iosBundleId: 'com.example.protfolio.RunnerTests',
  );
}
