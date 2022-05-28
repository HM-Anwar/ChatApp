import 'package:chat_app/model/chat_model.dart';
import 'package:chat_app/model/user_model.dart';
import 'package:chat_app/services/chat_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../application/chat_bloc/chat_bloc.dart';
import '../constants.dart';

class ChatRoom extends StatefulWidget {
  final UserModel chatPartner;

  ChatRoom({
    Key? key,
    required this.chatPartner,
  }) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  ScrollController scrollController = ScrollController();
  User? currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(widget.chatPartner.uid),
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 40, width: 10),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          widget.chatPartner.name,
                          style: TextStyle(
                              fontFamily: "Pacifico-Regular",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: ListView(
                          controller: scrollController,
                          children: [
                            Column(children: [
                              ...state.chat.map((e) {
                                return e.uids[0] == currentUser!.uid
                                    ? SendMsg(
                                        msg: e.msg, time: dateFormat(e.date))
                                    : ReceiveMsg(
                                        msg: e.msg, time: dateFormat(e.date));
                              }),
                            ]),
                          ],
                        )),
                  ),
                  KeyboardTextField(
                    receiverUid: widget.chatPartner.uid,
                    scrollController: scrollController,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String dateFormat(DateTime time) {
    DateFormat date = DateFormat('jm');
    return date.format(time);
  }
}

class KeyboardTextField extends StatelessWidget {
  String? msg;
  final String receiverUid;
  final ScrollController scrollController;
  TextEditingController msgController = TextEditingController();

  KeyboardTextField({
    Key? key,
    required this.receiverUid,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // height: MediaQuery.of(context).size.height * 0.075,
      // width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(color: Colors.white),
      child: TextFormField(
        minLines: 1,
        maxLines: 5,
        controller: msgController,
        onChanged: (value) => msg = value,
        decoration: Constants.keyboardDecoration.copyWith(
          suffixIcon: Container(
            padding: EdgeInsets.only(right: 7),
            child: CircleAvatar(
                backgroundColor: Color(0xff5b61b9),
                child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      ChatService().createUser(
                          isSeen: false,
                          image: '',
                          senderUid: FirebaseAuth.instance.currentUser!.uid,
                          receiverUid: receiverUid,
                          date: DateTime.now(),
                          name: '',
                          msg: msg!);

                      scrollController
                          .jumpTo(scrollController.position.maxScrollExtent);
                      msgController.clear();
                    },
                    child: Icon(Icons.send, color: Colors.white))),
          ),
        ),
      ),
    );
  }
}

class ReceiveMsg extends StatelessWidget {
  final String msg;
  final String time;

  const ReceiveMsg({
    Key? key,
    required this.msg,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(15)),
          color: Colors.grey.shade200,
        ),
        child: Text(
          msg,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ),
      leading: Text(
        time,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class SendMsg extends StatelessWidget {
  final String msg;
  final String time;

  SendMsg({Key? key, required this.msg, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 30,
        ),
      ),
      title: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
              topRight: Radius.circular(15)),
          color: Colors.grey.shade200,
        ),
        child: Text(
          msg,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ),
      trailing: Text(
        time,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
