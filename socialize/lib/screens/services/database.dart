import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:socialize/models/stuff.dart';

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

  //stuff list from snapshot
  List<Stuff> _stuffListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Stuff(
        name: doc.data['name'] ?? "",
        strength: doc.data['strength'] ?? 0,
        sugars: doc.data['sugars'] ?? "0",
      );
    }).toList();
  }

  //get stream, refresh every time there are any changes in the database
  Stream<List<Stuff>> get stuffs {
    return userCollection.snapshots().map(_stuffListFromSnapshot);
  }
}
