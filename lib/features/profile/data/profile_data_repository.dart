import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_data_repository.g.dart';

@riverpod
Stream<DocumentSnapshot<Map<String, dynamic>>> getUserData(Ref ref) {
  User? user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    return const Stream<DocumentSnapshot<Map<String, dynamic>>>.empty();
  }

  return FirebaseFirestore.instance
      .collection('Kullanicilar')
      .doc(user.uid)
      .snapshots();
}
