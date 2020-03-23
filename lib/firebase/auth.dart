import 'package:firebase_auth/firebase_auth.dart';

class BaseAuth {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future signIn(email, password) {
    try {
      return firebaseAuth.signInWithEmailAndPassword(
          email: email.toString().trim(), password: password.toString().trim());
    } catch (e) {
      //print(e);
      return null;
    }
  }

  Future<String> currentUser() async {
    FirebaseUser user = await firebaseAuth.currentUser();
    var id;
    user == null ? id = user : id = user.uid;
    return id;
  }

  Future<void> signOut() async {
    return firebaseAuth.signOut();
  }
}
