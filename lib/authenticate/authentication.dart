import 'package:firebase_auth/firebase_auth.dart';

class Authentication{
  final FirebaseAuth _auth = FirebaseAuth.instance;


  get user => _auth.currentUser;
  //Sign up Method

  Future<String?> signUp({required String email, required String password}) async {
    try{
      await _auth.createUserWithEmailAndPassword(
        email: email, 
        password: password,
        );
        return null;
    }on FirebaseException catch(e){
     return e.message; 
    }
  }

  //Sign In Method
  Future<String?> signIn({required String email, required String password}) async {
    try{
      await _auth.signInWithEmailAndPassword(
        email: email, 
        password: password,
        );
        return null;
    }on FirebaseException catch(e){
     return e.message; 
    }
  }

  //Sign Out Method

  Future<void> signOut() async {
    await _auth.signOut();
  }
}



