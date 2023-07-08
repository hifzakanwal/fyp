import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/user.dart';

class Auth {
  Future<String> login(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;

      if (user != null) {
        return "success";
      } else {
        throw Exception('Login failed. Please try again.');
      }
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      throw Exception('Logout failed: $e');
    }
  }

  Future<UserModel> register({
    required String email,
    required String password,
    required String username,
    required String address,
    required String userType,
  }) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      String? uid = user?.uid;
      FirebaseFirestore _firestore = FirebaseFirestore.instance;

      if (user != null) {
        UserModel userModel = UserModel(
          uid: uid,
          username: username,
          email: email,
          address: address,
          userType: userType,
          createdOn: Timestamp.now(),
        );
        print("USER CREATED");
        await _firestore.collection('Users').doc(uid).set(
              userModel.toJson(),
            );
        print("USER ADDED TO FIRESTORE");
        return userModel;
      } else {
        throw Exception('Registration failed. Please try again.');
      }
    } catch (e) {
      print(e.toString().toUpperCase());
      throw Exception('Registration failed: $e');
    }
  }

  getUserData() {
    User? user = FirebaseAuth.instance.currentUser;
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    return _firestore.collection('Users').doc(user?.uid).get();}
}
