import 'package:firebase_auth/firebase_auth.dart';
import 'package:socialize/models/users.dart';

class AuthService {
  //private var
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //user obj based on firebaseUser
  User _userFrombaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //sign in anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFrombaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign with email

  //register with email

  //sign out

}
