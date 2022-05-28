import 'package:chat_app/model/user_model.dart';
import 'package:chat_app/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FriendList extends StatelessWidget {
  const FriendList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Color(0xff5b61b9),
        title: Text("All Friends"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xff5b61b9),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                title: Text('name'),
              ),
              Divider(
                indent: 30,
                endIndent: 30,
                thickness: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
