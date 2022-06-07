import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions? get platformOptions {
    if (kIsWeb) {
      // Web
      return const FirebaseOptions(
        apiKey: "AIzaSyAX-nXrY_eEjNgEn-S5_2CgWQ57TXvuzz4",
        authDomain: "nady-system-5000f.firebaseapp.com",
        projectId: "nady-system-5000f",
        storageBucket: "nady-system-5000f.appspot.com",
        messagingSenderId: "667659932098",
        appId: "1:667659932098:web:d4c06734c1dc55c388c65b",
        measurementId: "G-F8QTNTRV2Z",
        androidClientId:
            "667659932098-hr5hkgq1tfl4p1a1kmdjbhvbff4l6jc7.apps.googleusercontent.com",
        iosClientId:
            '667659932098-7j1dinse7ol7ohbvei366l8urc0uator.apps.googleusercontent.com',
        iosBundleId: 'com.example.nadySystem',
      );
    } else if (Platform.isIOS || Platform.isMacOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        apiKey: "AIzaSyAX-nXrY_eEjNgEn-S5_2CgWQ57TXvuzz4",
        authDomain: "nady-system-5000f.firebaseapp.com",
        projectId: "nady-system-5000f",
        storageBucket: "nady-system-5000f.appspot.com",
        messagingSenderId: "667659932098",
        appId: "1:667659932098:web:d4c06734c1dc55c388c65b",
        measurementId: "G-F8QTNTRV2Z",
        androidClientId:
            "667659932098-hr5hkgq1tfl4p1a1kmdjbhvbff4l6jc7.apps.googleusercontent.com",
        iosClientId:
            '667659932098-7j1dinse7ol7ohbvei366l8urc0uator.apps.googleusercontent.com',
        iosBundleId: 'com.example.nadySystem',
      );
    } else {
      // Android
      return null;
    }
  }
}
