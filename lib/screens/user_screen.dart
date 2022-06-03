import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../services/user_service.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<UserModel>(
          future: UserService().getCurrentUserInfo(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final user = snapshot.data!;

              return Column(children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 24),
                            Text(
                              'PROFILE INFORMATION',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 18),
                            user.image == ''
                                ? CircleAvatar(
                                    backgroundColor: Color(0xff5b61b9),
                                    radius: 56,
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 80,
                                    ),
                                  )
                                : CircleAvatar(
                                    radius: 56,
                                    backgroundImage: NetworkImage(user.image),
                                  ),
                            SizedBox(height: 8),
                            Card(
                              child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text('Name: ' + user.name),
                              ),
                            ),
                            Card(
                                child: Container(
                                    padding: EdgeInsets.all(12),
                                    child: Text('Email: ' + user.email))),
                            Card(
                                child: Container(
                                    padding: EdgeInsets.all(12),
                                    child:
                                        Text('Contact no: ' + user.contact))),
                            Card(
                                child: Container(
                                    padding: EdgeInsets.all(12),
                                    child: Text(
                                      'Date of Birth: ' + user.dob.toString(),
                                    ))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]);
            }
            return Container(
              color: Colors.white,
              child: Center(child: CircularProgressIndicator()),
            );
          }),
    );
  }
}
