import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA-IZ8-DL6zTSMj2FjuzOgxIQbwdJ899mM",
            authDomain: "cricsphere-jry4vm.firebaseapp.com",
            projectId: "cricsphere-jry4vm",
            storageBucket: "cricsphere-jry4vm.appspot.com",
            messagingSenderId: "470376945412",
            appId: "1:470376945412:web:0dd8f15acd2f5b99a8e251"));
  } else {
    await Firebase.initializeApp();
  }
}
