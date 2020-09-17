import 'dart:html';
import 'package:firebase_auth/firebase_auth.dart';
class AuthService
{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Sign in Anonymously
  /*   Not in use
  Future SignInAnon()
  async{
      try
      {
        UserCredential result = await _auth.signInAnonymously();
        User user = result.user;
        return user;
      }
      catch(e)
      {

      }
  }
  */
  //sign in with email and password

  //register with email and password
  /*
  Future registerWithEmailAndPassword(String Email,String Password)
  async
  {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: Email, password: Password);
      FirebaseUser
    }
    catch(e)
    {}
  }
  */
  //User

  //sign out
}