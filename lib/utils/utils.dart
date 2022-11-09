import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void signOut() async {
  await FirebaseAuth.instance.signOut();
}

Future<void> signIn(String email, String password) async {
  try {
    UserCredential? userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    // await userCredential.user!.updateDisplayName('Mark');
    debugPrint('$userCredential');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      debugPrint('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      debugPrint('Wrong password provided for that user.');
    }
  }
}
