import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid;
  String? username;
  String? email;
  String? address;
  String? userType;
  Timestamp? createdOn;

  UserModel({
    this.uid,
    this.username,
    this.email,
    this.address,
    this.userType,
    this.createdOn,
  });

  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    username = map['username'];
    email = map['email'];
    address = map['address'];
    userType = map['userType'];
    createdOn = map['createdOn'];
  }
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
      'address': address,
      'userType': userType,
      'createdOn': createdOn,
    };
  }
}
