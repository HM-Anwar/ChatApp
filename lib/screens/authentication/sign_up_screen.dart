import 'package:chat_app/main.dart';
import 'package:chat_app/screens/authentication/sign_in_screen.dart';
import 'package:chat_app/screens/authentication/user_available.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/sign_up_bloc/sign_up_bloc.dart';
import '../../constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpBloc signUpBloc = SignUpBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignUpBloc(),
        child: BlocConsumer<SignUpBloc, SignUpState>(
          bloc: signUpBloc,
          listener: (context, state) {
            if (state.isSubmitted) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserAvailable(),
                  ));
            }
          },
          builder: (context, state) {
            // print(state.email);
            // print(state.password);
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
                        height: MediaQuery.of(context).size.height * 0.7,
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
                              margin: EdgeInsets.only(
                                  left: 20, top: 40, bottom: 15),
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SourceSansPro-Regular',
                                ),
                              ),
                            ),
                            EmailTextField(signUpBloc: signUpBloc),
                            PasswordTextField(signUpBloc: signUpBloc),
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
                                    signUpBloc
                                        .add(SignUpEvent.onSignUpPressed());
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'SourceSansPro-Regular',
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already Have an account?',
                                  style: TextStyle(
                                      fontFamily: 'SourceSansPro-Regular',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                SizedBox(width: 7),
                                MaterialButton(
                                  elevation: 0,
                                  padding: EdgeInsets.all(0),
                                  visualDensity: VisualDensity.comfortable,
                                  minWidth: 64,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AuthState(),
                                        ));
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
  const EmailTextField({Key? key, required this.signUpBloc}) : super(key: key);

  final SignUpBloc signUpBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) => signUpBloc.add(OnEmailChanged(value)),
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
  PasswordTextField({
    Key? key,
    required this.signUpBloc,
  }) : super(key: key);

  final SignUpBloc signUpBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
          onChanged: (value) => signUpBloc.add(OnPasswordChanged(value)),
          obscureText: true,
          decoration: Constants.textFieldDecoration.copyWith(
              hintText: 'Password', prefixIcon: Icon(Icons.lock_outline))),
    );
  }
}
