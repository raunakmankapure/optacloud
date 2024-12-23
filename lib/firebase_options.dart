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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBcW0h08FTadvAey3lnDZKAYJjRoi8evV8',
    appId: '1:429212071705:web:f55f2f8a3d412e0d353788',
    messagingSenderId: '429212071705',
    projectId: 'opta-b3a53',
    authDomain: 'opta-b3a53.firebaseapp.com',
    storageBucket: 'opta-b3a53.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAN0gLqbnZfGs4q_acdYzVDseMblg8adhE',
    appId: '1:429212071705:android:5c6b99df842d22c5353788',
    messagingSenderId: '429212071705',
    projectId: 'opta-b3a53',
    storageBucket: 'opta-b3a53.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6LschDvTowswYOwLijMwf6k30SVQ8zSo',
    appId: '1:429212071705:ios:741c9e3f162420c8353788',
    messagingSenderId: '429212071705',
    projectId: 'opta-b3a53',
    storageBucket: 'opta-b3a53.firebasestorage.app',
    iosBundleId: 'com.example.opta',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6LschDvTowswYOwLijMwf6k30SVQ8zSo',
    appId: '1:429212071705:ios:741c9e3f162420c8353788',
    messagingSenderId: '429212071705',
    projectId: 'opta-b3a53',
    storageBucket: 'opta-b3a53.firebasestorage.app',
    iosBundleId: 'com.example.opta',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBcW0h08FTadvAey3lnDZKAYJjRoi8evV8',
    appId: '1:429212071705:web:92debd6553d4c202353788',
    messagingSenderId: '429212071705',
    projectId: 'opta-b3a53',
    authDomain: 'opta-b3a53.firebaseapp.com',
    storageBucket: 'opta-b3a53.firebasestorage.app',
  );
}
