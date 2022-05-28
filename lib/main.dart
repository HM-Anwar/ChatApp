import 'package:chat_app/screens/authentication/sign_in_screen.dart';
import 'package:chat_app/screens/authentication/user_available.dart';
import 'package:chat_app/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff5b61b9),
      ),
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container();
          }
          if (snapshot.hasData) {
            return AuthState();
          }
          return SplashScreen();
        },
      ),
    );
  }
}

class AuthState extends StatelessWidget {
  const AuthState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        print(snapshot);
        //print(snapshot.data);
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return UserAvailable();
          } else {
            return SignInScreen();
          }
        }
        return SplashScreen();
      },
    );
  }
}
