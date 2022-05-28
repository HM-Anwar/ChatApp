import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  UserModel({
    required this.image,
    required this.uid,
    required this.dob,
    required this.contact,
    required this.name,
    required this.email,
    // required this.friendRequest,
  });

  final String image;
  final String uid;
  final DateTime dob;
  final String contact;
  final String name;
  final String email;
  // final String friendRequest;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        image: json["image"],
        uid: json["uid"],
        dob: DateTime.parse(json['dob']), // json["dob"],
        contact: json["contact"],
        name: json["name"],
        email: json["email"],
        // friendRequest: json["friendRequest"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "uid": uid,
        "dob": dob.toIso8601String(),
        "contact": contact,
        "name": name,
        "email": email,
        // "friendRequest": friendRequest,
      };

  @override
  List<Object?> get props => [uid, email, name];
}
