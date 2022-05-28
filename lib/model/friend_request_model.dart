// import 'package:chat_app/model/user_model.dart';
// import 'package:equatable/equatable.dart';
//
// class FriendRequestModel extends Equatable {
//   FriendRequestModel({
//     required this.senderUID,
//     required this.receiverUID,
//     required this.status,
//     required this.requestSender,
//   });
//
//   final String senderUID;
//   final String receiverUID;
//   final String status;
//   final UserModel requestSender;
//
//   factory FriendRequestModel.fromJson(Map<String, dynamic> json) =>
//       FriendRequestModel(
//           receiverUID: json["receiverUID"],
//           senderUID: json["senderUID"],
//           status: json["status"],
//           requestSender: UserModel.fromJson(json['requestSender']));
//
//   Map<String, dynamic> toJson() => {
//         "receiverUID": receiverUID,
//         "senderUID": senderUID,
//         "status": status,
//       };
//
//   @override
//   List<Object?> get props => [
//         senderUID,
//         receiverUID,
//         status,
//       ];
// }
