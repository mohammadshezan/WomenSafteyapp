import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDI5iJnG39Xt5LGN_F_81LuOjaBo2F2Jdg",
            authDomain: "saftey-sister-x8eloq.firebaseapp.com",
            projectId: "saftey-sister-x8eloq",
            storageBucket: "saftey-sister-x8eloq.appspot.com",
            messagingSenderId: "285549737683",
            appId: "1:285549737683:web:a8089c0bf08d9f74adc626"));
  } else {
    await Firebase.initializeApp();
  }
}
