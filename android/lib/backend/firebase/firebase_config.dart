import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAwNqrdrH6YdNCtc0uMr7GDV1yc52U2zAs",
            authDomain: "gardanimaux-64f96.firebaseapp.com",
            projectId: "gardanimaux-64f96",
            storageBucket: "gardanimaux-64f96.appspot.com",
            messagingSenderId: "396878417284",
            appId: "1:396878417284:web:7d9ef157f0c4c791e9e1d1"));
  } else {
    await Firebase.initializeApp();
  }
}
