import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:moje_miasto/models/models.dart';

class UserFSRepository {
  final _db = FirebaseFirestore.instance.collection('usersFS');

  Future<void> createUser(UserFS userFS) async {
    var refUserFS = _db.doc(userFS.uid);

    // create a new data json map for userFS
    var dataUserFS = userFS.toJson();

    try {
      // write the data to firestore database,
      // merge: true will make it a non destructive write, it won't overwrite any existing data there
      await refUserFS.set(dataUserFS, SetOptions(merge: true));
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        debugPrint("Failed with error '${e.code}': ${e.message}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
