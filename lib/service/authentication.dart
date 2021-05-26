import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  String dialog = "";
  //anonymous
  Future signInAnonymous() async {
    try {
      // ignore: unused_local_variable
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  //signOut
  Future signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  //regEmailPassword
  Future registerEmailPassword(String email, String password) async {
    try {
      // ignore: unused_local_variable
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //signInEmailPassword
  Future signInEmailPassword(String email, String password) async {
    try {
      // ignore: unused_local_variable
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return false;
    }
  }

  // password reset
  Future sendPasswordResetEmail(String email) async {
    try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        return true;
    }on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
