// import 'package:chat_app/model/friend_request_model.dart';
// import 'package:chat_app/model/user_model.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class FriendService {
//   Future createFriendRequest({
//     required String senderUid,
//     required String receiverUid,
//     required String status,
//     required UserModel requestSender,
//   }) async {
//     try {
//       final currentUser = FirebaseAuth.instance.currentUser!.uid;
//       FriendRequestModel friendRequestModel = FriendRequestModel(
//         senderUID: senderUid,
//         receiverUID: receiverUid,
//         status: status,
//         requestSender: requestSender,
//       );
//       await FirebaseFirestore.instance
//           .collection('friends')
//           .doc()
//           .set(friendRequestModel.toJson());
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   Future<List<FriendRequestModel>> getRequests() async {
//     final currentUser = FirebaseAuth.instance.currentUser!.uid;
//     final rawRequest = await FirebaseFirestore.instance
//         .collection('friends')
//         .where('receiverUID', isEqualTo: currentUser)
//         .where('status', isEqualTo: 'Pending')
//         .get();
//
//     List<FriendRequestModel> requests = [];
//     for (final doc in rawRequest.docs) {
//       Map<String, dynamic> requestMap = doc.data();
//       requestMap['requestSender'] = (await FirebaseFirestore.instance
//               .collection('users')
//               .doc(requestMap['senderUID'])
//               .get())
//           .data();
//       requests.add(FriendRequestModel.fromJson(requestMap));
//     }
//
//     return requests;
//   }
//
//   Future deleteRequest(String userName) async {
//     try {
//       // final rawDeleteRequest = await FirebaseFirestore.instance
//       //     .collection('friends')
//       //     .doc('NaQSRZo6tIdoDiCwwlVj')
//       //     .delete();
//       // print("deleted");
//       // print(FirebaseAuth.instance.currentUser!.uid);
//     } catch (e) {
//       print(e);
//     }
//   }
// }
