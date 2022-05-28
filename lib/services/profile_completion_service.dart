import 'package:chat_app/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfileCompletionService {
  Future<bool> createUser({
    required String uid,
    required String name,
    required String contactNo,
    required String email,
    required DateTime dateOfBirth,
    required String image,
  }) async {
    try {
      UserModel userModel = UserModel(
        image: image,
        uid: uid,
        dob: dateOfBirth,
        contact: contactNo,
        name: name,
        email: email,
        // friendRequest: friendRequest,
      );
      await FirebaseFirestore.instance
          .collection("users")
          .doc(uid)
          .set(userModel.toJson());
      Fluttertoast.showToast(msg: 'Successfully submitted');
      return true;
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      return false;
    }
  }
}
