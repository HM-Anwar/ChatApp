import 'package:chat_app/model/user_model.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/profile_completion.dart';
import 'package:chat_app/screens/splash_screen.dart';
import 'package:chat_app/services/service_locator.dart';
import 'package:chat_app/services/user_service.dart';
import 'package:flutter/material.dart';

class UserAvailable extends StatefulWidget {
  const UserAvailable({Key? key}) : super(key: key);

  @override
  _UserAvailableState createState() => _UserAvailableState();
}

class _UserAvailableState extends State<UserAvailable> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserModel?>(
        future: UserService().checkUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == null) {
              return ProfileCompletion();
            } else {
              return ChatScreen();
            }
          }
          return SplashScreen();
        });
  }
}
