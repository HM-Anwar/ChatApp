import 'package:equatable/equatable.dart';

class ChatModel extends Equatable {
  ChatModel({
    required this.isSeen,
    required this.image,
    required this.uids,
    required this.date,
    required this.name,
    required this.msg,
  });

  final String image;
  final List<String> uids;
  final bool isSeen;
  final DateTime date;
  final String name;
  final String msg;

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        isSeen: json['isSeen'],
        image: json["image"],
        uids: List.from(json["uids"].map((e) => e.toString())),
        date: DateTime.parse(json['dob']),
        name: json["name"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "isSeen": isSeen,
        "image": image,
        "uids": uids,
        "dob": date.toIso8601String(),
        "name": name,
        "msg": msg,
      };

  @override
  List<Object?> get props => [uids];
}
