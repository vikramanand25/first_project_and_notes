import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future <User> CreateAccount(String name, String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try{
    User user = (await _auth.createUserWithEmailAndPassword(email: email, password: password)).user;
    if ( user != null){
      print("Logged in");
      await _firestore.collection('users').doc(_auth.currentUser.uid).set({
        "name": name,
        "email" : email,
        "password": password,
      });
      return user;
    }
  }catch(e){
    print(e);
    return null;
  }
}



Future <User> LoggedIn(String email, String password)async{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    User user =(await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
    if(user != null){
      print ("logged in sucessfully");
      return user;
    }

  }catch(e){
    print(e);
    return null;
  }
}



