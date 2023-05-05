import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBSw3MSUVLAhJyeYbhjYRYepFYTtYXpmAQ",
            authDomain: "jathiratnalu-ff85b.firebaseapp.com",
            projectId: "jathiratnalu-ff85b",
            storageBucket: "jathiratnalu-ff85b.appspot.com",
            messagingSenderId: "12842053321",
            appId: "1:12842053321:web:de37770a418bd7dc6f6718"));
  } else {
    await Firebase.initializeApp();
  }
}
