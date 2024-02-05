import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDfrws5WoMk9Si8FBu_7hY8_IcWhn7wKUA",
            authDomain: "vendevry.firebaseapp.com",
            projectId: "vendevry",
            storageBucket: "vendevry.appspot.com",
            messagingSenderId: "724173439313",
            appId: "1:724173439313:web:c272aa032c5025ad929370",
            measurementId: "G-NPR8ML2040"));
  } else {
    await Firebase.initializeApp();
  }
}
