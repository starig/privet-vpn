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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXZXvsVUGMq1SBGiPxL4I03wcARMbXWZg',
    appId: '1:591551138638:android:ccde6b111f01e1ef526c1f',
    messagingSenderId: '591551138638',
    projectId: 'privet-1a0f9',
    storageBucket: 'privet-1a0f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDi-bl40wpXdjUDwHB7ssW3Bqw9XRSvi90',
    appId: '1:591551138638:ios:298268bb1f3c9bf5526c1f',
    messagingSenderId: '591551138638',
    projectId: 'privet-1a0f9',
    storageBucket: 'privet-1a0f9.appspot.com',
    androidClientId: '591551138638-sq0ap4eorh1meidm2pvenc8vsm6jlv2o.apps.googleusercontent.com',
    iosClientId: '591551138638-au808u0nn2k64c1itvrca5r291ktdm5v.apps.googleusercontent.com',
    iosBundleId: 'com.example.privetVpn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDi-bl40wpXdjUDwHB7ssW3Bqw9XRSvi90',
    appId: '1:591551138638:ios:298f4b96f0054c50526c1f',
    messagingSenderId: '591551138638',
    projectId: 'privet-1a0f9',
    storageBucket: 'privet-1a0f9.appspot.com',
    androidClientId: '591551138638-sq0ap4eorh1meidm2pvenc8vsm6jlv2o.apps.googleusercontent.com',
    iosClientId: '591551138638-ei9bni1ok3cd869c9nr8nbe4ml0q0k1r.apps.googleusercontent.com',
    iosBundleId: 'com.example.privetVpn.RunnerTests',
  );
}