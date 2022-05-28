import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/authentication/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/sign_in_bloc/sign_in_bloc.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final SignInBloc signInBloc = SignInBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignInBloc(),
        child: BlocConsumer<SignInBloc, SignInState>(
          bloc: signInBloc,
          listener: (context, state) {},
          builder: (context, state) {
            return SafeArea(
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 50),
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            Icon(
                              Icons.message,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              "Chat App",
                              style: TextStyle(
                                  fontFamily: "Pacifico-Regular",
                                  color: Colors.white,
                                  fontSize: 60),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 40),
                              child: Text(
                                "Welcome",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SourceSansPro-Regular',
                                ),
                              ),
                            ),
                            EmailTextField(signInBloc: signInBloc),
                            PasswordTextField(signInBloc: signInBloc),
                            Center(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                margin: EdgeInsets.symmetric(vertical: 20),
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: Color(0xff5b61b9),
                                  ),
                                  onPressed: () {
                                    signInBloc.add(OnSignInPressed());
                                  },
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'SourceSansPro-Regular',
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'New to App?',
                                  style: TextStyle(
                                      fontFamily: 'SourceSansPro-Regular',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                MaterialButton(
                                  elevation: 0,
                                  padding: EdgeInsets.all(0),
                                  visualDensity: VisualDensity.comfortable,
                                  minWidth: 64,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpScreen()));
                                  },
                                  child: Text(
                                    'SignUp',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff5b61b9)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required this.signInBloc,
  }) : super(key: key);

  final SignInBloc signInBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        onChanged: (value) => signInBloc.add(OnEmailChanged(value)),
        keyboardType: TextInputType.emailAddress,
        decoration: Constants.textFieldDecoration.copyWith(
          hintText: 'Email',
          prefixIcon: Icon(Icons.email_outlined),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key, required this.signInBloc})
      : super(key: key);

  final SignInBloc signInBloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            onChanged: (value) => signInBloc.add(OnPasswordChanged(value)),
            obscureText: true,
            decoration: Constants.textFieldDecoration.copyWith(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock_outline_rounded),
            ),
          ),
        ),
      ],
    );
  }
}
