import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User firebaseUser = result.user!;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<User?> signUp(String email, String password) async{
    try{
      User? user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)).user;
      return user;
    }catch(e){
        print(e.toString());
    }
  }
  static Future<User?> signIn(String email, String password) async{
    try{
      User? user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)).user;
      return user;
    }catch(e){
        print(e.toString());
    }
  }

  static Future<void> signOut() async{
    _auth.signOut();
  }


  static Stream<User?> get firebaseUserStream => _auth.authStateChanges();
}
