import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD-mF1r0Nvr1t9XAikMYTC5Xgh9-FAIw3c",
            authDomain: "studio-93-795ad.firebaseapp.com",
            projectId: "studio-93-795ad",
            storageBucket: "studio-93-795ad.appspot.com",
            messagingSenderId: "330004802139",
            appId: "1:330004802139:web:82668b04e8acd0c315ad7e"));
  } else {
    await Firebase.initializeApp();
  }
}
