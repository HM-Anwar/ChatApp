import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthenticationService {
  Future<bool> signUp(String? email, String? password) async {
    final auth = FirebaseAuth.instance;
    String? errorMsg;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email!, password: password!);
      Fluttertoast.showToast(msg: 'Successfully registered');
      return true;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          errorMsg = 'weak password';
          break;
        case 'email-already-in-use':
          errorMsg = 'The account already exists for that email.';
          break;
        case 'invalid-email':
          errorMsg = 'Invalid Email';
          break;
        case 'too-many-requests':
          errorMsg = "too many requests";
          break;

        default:
          errorMsg = "Please check your internet connection";
      }
      Fluttertoast.showToast(msg: errorMsg);
      print(e.code);
      return false;
    }
  }

  Future signIn(String? email, String? password) async {
    final auth = FirebaseAuth.instance;
    final String errorMsg;
    try {
      await auth.signInWithEmailAndPassword(email: email!, password: password!);
      Fluttertoast.showToast(msg: 'Login Successful');
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          errorMsg = 'The account already exists for that email.';
          break;
        case 'invalid-email':
          errorMsg = 'Invalid Email';
          break;
        case 'user-not-found':
          errorMsg = 'Incorrect Email';
          break;
        case 'wrong-password':
          errorMsg = 'Password is incorrect';
          break;
        default:
          errorMsg = "Please check your internet connection";
      }
      Fluttertoast.showToast(msg: errorMsg);
      print(e.code);
    }
  }
}
