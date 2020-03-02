import 'package:firebase_auth/firebase_auth.dart';

class BaseAuth {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future signIn(email, password) {
    try {
      firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((val) {
        return null;
      });
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
