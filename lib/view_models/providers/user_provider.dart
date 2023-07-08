import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/user.dart';

final userProvider = FutureProvider.family<UserModel,String>((ref, uid) async {
  String res = "Some error has occurred";
  // final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  DocumentSnapshot doc = await firestore
      .collection('Users')
      .doc(uid)
      .get();
  res = doc.data().toString();
  res = jsonEncode(doc.data());
  var data = await jsonDecode(res);
  return UserModel(
    uid: data['uid'],
    username: data['username'],
    email: data['email'],
    address: data['address'],
    createdOn: data['createdOn'],
  );
});
