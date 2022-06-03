import 'package:chat_app/model/chat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatService {
  Future createUser({
    required String image,
    required String senderUid,
    required String receiverUid,
    required DateTime date,
    required String name,
    required String msg,
    required bool isSeen,
  }) async {
    try {
      ChatModel chatModel = ChatModel(
        isSeen: isSeen,
        image: image,
        uids: [senderUid, receiverUid],
        date: date,
        name: name,
        msg: msg,
      );
      await FirebaseFirestore.instance
          .collection('chats')
          .add(chatModel.toJson());
    } catch (e) {
      throw e;
    }
  }

  Stream<List<ChatModel>> getCurrentChat() {
    return FirebaseFirestore.instance
        .collection("chats")
        .where("uids", arrayContains: FirebaseAuth.instance.currentUser!.uid)
        .where('isSeen', isEqualTo: 'false')
        .snapshots()
        .map((snapshot) {
      List<ChatModel> data =
          snapshot.docs.map((e) => ChatModel.fromJson(e.data())).toList();
      return data;
    });
  }

  Stream<List<ChatModel>> getChat(String chatPartnerUid) {
    return FirebaseFirestore.instance
        .collection('chats')
        .snapshots()
        .map((snapshot) {
      List<ChatModel> data =
          snapshot.docs.map((e) => ChatModel.fromJson(e.data())).toList();
      data.sort((a, b) {
        return a.date.compareTo(b.date);
      });

      final filterChats = data
          .where((element) =>
              element.uids.contains(chatPartnerUid) &&
              element.uids.contains(FirebaseAuth.instance.currentUser!.uid))
          .toList();

      return filterChats;
    });
  }
}
