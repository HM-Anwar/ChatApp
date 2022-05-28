import 'package:chat_app/model/chat_model.dart';
import 'package:chat_app/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class UserService {
  final currentUser = FirebaseAuth.instance.currentUser!;

  Future<UserModel> checkUser() async {
    final userData = await FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: currentUser.uid)
        .get();
    UserModel user =
        userData.docs.map((e) => UserModel.fromJson(e.data())).toList().first;
    return user;
  }

  Future<List<UserModel>> getUsers() async {
    final rawUser = await FirebaseFirestore.instance
        .collection('users')
        .where('uid', isNotEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get();
    List<UserModel> user =
        rawUser.docs.map((e) => UserModel.fromJson(e.data())).toList();
    return user;
  }

  Future<UserModel> getCurrentUserInfo() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .get();
    UserModel user = UserModel.fromJson(snapshot.data()!);
    return user;
  }
}
