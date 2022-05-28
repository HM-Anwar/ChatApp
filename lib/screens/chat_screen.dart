import 'package:chat_app/constants.dart';
import 'package:chat_app/model/friend_request_model.dart';
import 'package:chat_app/model/user_model.dart';
import 'package:chat_app/screens/splash_screen.dart';
import 'package:chat_app/services/friend_service.dart';
import 'package:chat_app/services/service_locator.dart';
import 'package:chat_app/services/user_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main.dart';
import 'chat_room.dart';
import 'friend_list.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TabController? tabController;
  List<UserModel> users = [];
  bool isUserGet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: FutureBuilder<List<UserModel>>(
            future: UserService().getUsers(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                isUserGet = true;
                users = snapshot.data!;
                return SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 10, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 40),
                            Text(
                              "Chats",
                              style: TextStyle(
                                  fontFamily: "Pacifico-Regular",
                                  color: Colors.white,
                                  fontSize: 40),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 30),
                              child: Icon(
                                Icons.message_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            SizedBox(width: 150),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                  onPressed: () {
                                    FirebaseAuth.instance.signOut();
                                    Navigator.of(context)
                                        .popUntil((route) => route.isFirst);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AuthState(),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.clear,
                                    color: Colors.black,
                                  )),
                            )
                          ],
                        ),
                      ),
                      TabBarTitle(
                          tabController: tabController,
                          tabsTitle1: "CHATS",
                          tabsTitle2: "USER INFO"),
                      Expanded(
                        child: TabBarView(controller: tabController, children: [
                          ChatsScreen(
                            users: users,
                            isUserGet: isUserGet,
                          ),
                          ProfileScreen(),
                        ]),
                      )
                    ],
                  ),
                );
              }
              return SplashScreen();
            }),
      ),
    );
  }
}

class TabBarTitle extends StatelessWidget {
  const TabBarTitle({
    Key? key,
    required this.tabController,
    required this.tabsTitle1,
    required this.tabsTitle2,
  }) : super(key: key);

  final TabController? tabController;
  final String tabsTitle1;
  final String tabsTitle2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        child: TabBar(
          controller: tabController,
          unselectedLabelColor: Colors.grey.shade300,
          labelColor: Colors.white,
          indicatorWeight: 2,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.chat_bubble_outline, size: 21),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    tabsTitle1,
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  )),
            ),
            Tab(
              icon: Icon(Icons.person_outline, size: 28),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    tabsTitle2,
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({
    Key? key,
    required this.users,
    required this.isUserGet,
  }) : super(key: key);

  final List<UserModel> users;
  final bool isUserGet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: isUserGet
          ? FloatingActionButton(
              backgroundColor: Color(0xff5b61b9),
              elevation: 4,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FriendList()));
              },
              child: Icon(Icons.chat_rounded),
            )
          : Container(),
      body: Column(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(25),
              //   topRight: Radius.circular(25),
              // ),
            ),
            child: ListView(
              children: [
                Column(
                  children: [
                    ...users.map(
                      (e) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatRoom(chatPartner: e),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xff5b61b9),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          title: Text(e.name),
                          subtitle: Text("last message like hi,how are you?"),
                          trailing: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.teal.shade200,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

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
            if (snapshot.hasData)
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
                            CircleAvatar(
                              backgroundColor: Color(0xff5b61b9),
                              radius: 56,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 80,
                              ),
                            ),
                            SizedBox(height: 8),
                            Card(
                              child: Container(
                                padding: EdgeInsets.all(12),
                                child: Text('Name: ' + snapshot.data!.name),
                              ),
                            ),
                            Card(
                                child: Container(
                                    padding: EdgeInsets.all(12),
                                    child: Text(
                                        'Email: ' + snapshot.data!.email))),
                            Card(
                                child: Container(
                                    padding: EdgeInsets.all(12),
                                    child: Text('Contact no: ' +
                                        snapshot.data!.contact))),
                            Card(
                                child: Container(
                                    padding: EdgeInsets.all(12),
                                    child: Text(
                                      'Date of Birth: ' +
                                          snapshot.data!.dob.toString(),
                                    ))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]);
            return Container();
          }),
    );
  }
}
