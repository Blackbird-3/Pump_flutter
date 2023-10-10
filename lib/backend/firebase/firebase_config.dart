import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBKH8AkmgHuNdcoH5TmBjy6U6MjqCO7OsY",
            authDomain: "pump-b85ec.firebaseapp.com",
            projectId: "pump-b85ec",
            storageBucket: "pump-b85ec.appspot.com",
            messagingSenderId: "366653655234",
            appId: "1:366653655234:web:5aacff5beaab38795d135b",
            measurementId: "G-WRQDKYLJ62"));
  } else {
    await Firebase.initializeApp();
  }
}
