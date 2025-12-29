import 'package:cafe_app/features/authentication/domain/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_repository.g.dart';

@riverpod
Future<void> signUpRepository(
  Ref ref, {
  required BuildContext context,
  required UserModel userModel,
}) async {
  try {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Firebase Authentication ile kullanıcı oluştur
    UserCredential credential = await auth.createUserWithEmailAndPassword(
      email: userModel.email.trim(),
      password: userModel.password,
    );

    User? user = credential.user;
    if (user == null) {
      await Fluttertoast.showToast(msg: 'Kullanıcı oluşturulamadı');
      return;
    }

    // Firestore'a kullanıcı bilgilerini kaydet
    await firestore
        .collection('Kullanicilar')
        .doc(user.uid)
        .set(
          UserModel(
            uid: user.uid,
            email: userModel.email,
            fullName: userModel.fullName,
            password: userModel.password,
          ).toJson(),
        );
  } on FirebaseAuthException catch (e) {
    await Fluttertoast.showToast(msg: e.message ?? 'Firebase hatası oluştu');
  } catch (e) {
    await Fluttertoast.showToast(msg: 'Beklenmeyen bir hata oluştu');
  }
}
