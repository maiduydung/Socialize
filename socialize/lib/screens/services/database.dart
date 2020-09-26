import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference userCollection =
      Firestore.instance.collection('stuffs');

  Future updateUserData(String sugars, String name, int strength) async {
    return await userCollection.document(uid).setData({
      'sugars': sugars,
      'name': name,
      'stregth': strength,
    });
  }

  //get stream, refresh every time there are any changes in the database
  Stream<QuerySnapshot> get stuffs {
    return userCollection.snapshots();
  }
}
