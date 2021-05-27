import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class DatabaseService {
  //properties
  final String uid;
  DatabaseService({this.uid});

  //call firebase auth
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference brewCollection = FirebaseFirestore.instance.collection('brews');
  
  //add userdata
  Future addUserData(String username, int sugars, String strength, String milk ) async {
    //Get uid of the current user
    final firebaseUser = auth.currentUser;
    final uid = firebaseUser.uid;

    //add userdata to the Firestore database
    return await brewCollection.doc(uid).set({
      'user_name' : username,
      'sugars' : sugars,
      'strength' : strength,
      'milk' : milk
    }).then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  //update userdata
  Future updateUserData(String username, int sugars, String strength, String milk) async {
    //Get uid of the current user
    final firebaseUser = auth.currentUser;
    final uid = firebaseUser.uid;
    //add userdata to the Firestore database
    return await brewCollection.doc(uid).update({
      'user_name' : username,
      'sugars' : sugars,
      'strength' : strength,
      'milk' : milk
    }).then((value) => print("User updated"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}