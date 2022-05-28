import 'dart:io';

import 'package:chat_app/application/profile_completion_bloc/profile_completion_bloc.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import '../constants.dart';

class ProfileCompletion extends StatefulWidget {
  const ProfileCompletion({Key? key}) : super(key: key);

  @override
  _ProfileCompletionState createState() => _ProfileCompletionState();
}

class _ProfileCompletionState extends State<ProfileCompletion> {
  File? file;
  bool icon = true;

  @override
  Widget build(BuildContext context) {
    // FirebaseAuth.instance.signOut();
    return Scaffold(
      body: BlocProvider(
        create: (context) => ProfileCompletionBloc(),
        child: BlocConsumer<ProfileCompletionBloc, ProfileCompletionState>(
          listener: (context, state) {
            if (state.isSubmitted) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(),
                ),
              );
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 50, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_pin,
                              color: Colors.white,
                              size: 130,
                            ),
                            Text(
                              "Profile \n Completion",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Pacifico-Regular",
                                  color: Colors.white,
                                  fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 30, bottom: 15),
                              child: Text(
                                "Personal Information",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SourceSansPro-Regular',
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: getImage,
                              child: CircleAvatar(
                                radius: 70,
                                backgroundImage:
                                    file != null ? FileImage(file!) : null,
                                child: icon ? Icon(Icons.camera_alt) : null,
                              ),
                            ),
                            SizedBox(height: 10),
                            NameTextField(),
                            ContactTextField(),
                            DateOfBirthSelector(profileCompletionState: state),
                            EmailWidget(),
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
                                    context
                                        .read<ProfileCompletionBloc>()
                                        .add(OnSubmitPressed());
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'SourceSansPro-Regular',
                                        fontSize: 20),
                                  ),
                                ),
                              ),
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

  Future getImage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        file = File(image.path);
        icon = false;
      });
    }
  }
}

class NameTextField extends StatelessWidget {
  const NameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            onChanged: (value) {
              context
                  .read<ProfileCompletionBloc>()
                  .add(OnNameChanged(firstName: value));
            },
            keyboardType: TextInputType.name,
            decoration: Constants.textFieldDecoration.copyWith(
              hintText: 'First Name',
              prefixIcon: Icon(Icons.person_outline),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            onChanged: (value) {
              context
                  .read<ProfileCompletionBloc>()
                  .add(OnNameChanged(lastName: value));
            },
            keyboardType: TextInputType.name,
            decoration: Constants.textFieldDecoration.copyWith(
              hintText: 'Last Name',
              prefixIcon: Icon(Icons.person_outline),
            ),
          ),
        ),
      ],
    );
  }
}

class ContactTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            onChanged: (value) {
              context
                  .read<ProfileCompletionBloc>()
                  .add(OnContactChanged(value));
            },
            keyboardType: TextInputType.phone,
            decoration: Constants.textFieldDecoration.copyWith(
              hintText: 'Contact No',
              prefixIcon: Icon(Icons.phone),
            ),
          ),
        ),
      ],
    );
  }
}

class DateOfBirthSelector extends StatelessWidget {
  const DateOfBirthSelector({Key? key, required this.profileCompletionState})
      : super(key: key);
  final ProfileCompletionState profileCompletionState;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        DateTime? newDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (newDate != null) {
          context.read<ProfileCompletionBloc>().add(OnDateChanged(newDate));
        }
      },
      child: Container(
        margin: EdgeInsets.only(left: 17, top: 10),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Date\nOf\nBirth".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'SourceSansPro-Regular',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            VerticalDivider(
              width: 40,
              thickness: 2,
              color: Colors.grey.shade400,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                formatDate(profileCompletionState.dateOfBirth),
                // formatDate(state.selectedDate),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    fontFamily: 'SourceSansPro-Regular'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatDate(DateTime date) {
    DateFormat dateFormat = DateFormat('d, MMMM y');
    return dateFormat.format(date);
  }
}

class EmailWidget extends StatelessWidget {
  EmailWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        FirebaseAuth.instance.currentUser!.email.toString(),
        style: TextStyle(
            fontWeight: FontWeight.bold, fontFamily: 'SourceSansPro-Regular'),
      ),
    );
  }
}
