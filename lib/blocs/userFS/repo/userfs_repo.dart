import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class UserFSRepository {
  final _db = FirebaseFirestore.instance.collection('usersFS');

  // Future<void> createUser()
}
