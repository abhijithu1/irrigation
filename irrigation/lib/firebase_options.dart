// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core_dart/firebase_core_dart.dart' show FirebaseOptions;
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
    apiKey: 'AIzaSyDFhLDkmqPdRgCfT8xAUANepvvkTfIVI7s',
    appId: '1:768548851726:web:4d7e06cfb3d52f62966c5f',
    messagingSenderId: '768548851726',
    projectId: 'dixonnnn-30e1b',
    authDomain: 'dixonnnn-30e1b.firebaseapp.com',
    storageBucket: 'dixonnnn-30e1b.appspot.com',
    measurementId: 'G-MVLXWVWR6Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGddwDIWi-Z2Jkh_vXoy3ifPwGTYSEWGU',
    appId: '1:768548851726:android:40c844406af3b2af966c5f',
    messagingSenderId: '768548851726',
    projectId: 'dixonnnn-30e1b',
    storageBucket: 'dixonnnn-30e1b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBRaMk8u8Gpp58L0YI4GkhY76WIYHsQk2Y',
    appId: '1:768548851726:ios:12a7e7aec9ecb5cf966c5f',
    messagingSenderId: '768548851726',
    projectId: 'dixonnnn-30e1b',
    storageBucket: 'dixonnnn-30e1b.appspot.com',
    iosClientId: '768548851726-4to6s2s61ha6q45fk5t6pv12iq5dl49d.apps.googleusercontent.com',
    iosBundleId: 'com.example.irrigation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBRaMk8u8Gpp58L0YI4GkhY76WIYHsQk2Y',
    appId: '1:768548851726:ios:12a7e7aec9ecb5cf966c5f',
    messagingSenderId: '768548851726',
    projectId: 'dixonnnn-30e1b',
    storageBucket: 'dixonnnn-30e1b.appspot.com',
    iosClientId: '768548851726-4to6s2s61ha6q45fk5t6pv12iq5dl49d.apps.googleusercontent.com',
    iosBundleId: 'com.example.irrigation',
  );
}
