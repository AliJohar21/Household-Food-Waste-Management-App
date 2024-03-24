import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

class FirebaseManager {
  static const String _cartCollectionName = "users_cart";
  static const String _userIdField = "user_id";

  static Future<List> getUserCartItems() async {
    var items = [];
    try {
      var currentUserId = FirebaseAuth.instance.currentUser?.uid;
      if (currentUserId == null) return items;
      FirebaseFirestore.instance.settings =
          const Settings(persistenceEnabled: false);

      var result = await FirebaseFirestore.instance
          .collection(_cartCollectionName)
          .get();

      print(result);
      print(result.docs);
    } catch (e, s) {
      print(e);
      print(s);
    }

    return items;
  }
}
