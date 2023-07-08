import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ect/view_models/providers/user_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/user.dart';

class Auth {
  Future<FutureProvider<UserModel>> login(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      String? uid = user?.uid;

      if (user != null) {
        FutureProvider<UserModel> userModel = userProvider(uid!);
        return userModel;
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
              userModel.toMap(),
            );
        print("USER ADDED TO FIRESTORE");
        return userModel;
      } else {
        throw Exception('Registration failed. Please try again.');
      }
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
  }
}
