import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:moje_miasto/models/models.dart';

class UserFSRepository {
  final _db = FirebaseFirestore.instance.collection('usersFS');

  Future<UserFS> getCurrentUser(String uid) async {
    var ref = _db.doc(uid);

    var snapshot = await ref.get();

    return UserFS.fromJson(snapshot.data() ?? {});
  }

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

  Future<bool> checkIfUserExistsInFirebase(String uid) async {
    var ds = await _db.doc(uid).get();

    return ds.exists;
  }
}
