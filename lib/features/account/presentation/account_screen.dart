import 'package:cafe_app/features/account/controller/auth_provider.dart';
import 'package:cafe_app/features/account/controller/is_login.dart';
import 'package:cafe_app/features/account/presentation/login_screen.dart';
import 'package:cafe_app/features/account/presentation/register_screen.dart';
import 'package:cafe_app/features/profile/presentation/profile_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. Firebase Auth durumunu dinliyoruz (Loading, Error, Data)
    AsyncValue<User?> authState = ref.watch(authStateProvider);

    // 2. Login/Register arası geçişi sağlayan lokal state
    bool isLoginMode = ref.watch(isLoginProvider);

    return authState.when(
      // Veri geldiğinde (Kullanıcı durumu belli olduğunda)
      data: (User? user) {
        // A) Kullanıcı varsa (Giriş yapmışsa) -> Profil Ekranı
        if (user != null) {
          return const ProfileScreen();
        }

        // B) Kullanıcı yoksa (Giriş yapmamışsa) -> Login veya Register Ekranı
        return isLoginMode ? const LoginScreen() : const RegisterScreen();
      },

      // Yükleniyor durumu (Firebase henüz cevap vermediyse)
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),

      // Hata durumu
      error: (Object error, StackTrace stackTrace) => Scaffold(
        body: Center(child: Text('error_message'.tr(args: <String>[error.toString()]))),
      ),
    );
  }
}
