import 'package:cafe_app/features/authentication/controller/auth_provider.dart';
import 'package:cafe_app/features/authentication/controller/is_login.dart';
import 'package:cafe_app/features/authentication/presentation/login_screen.dart';
import 'package:cafe_app/features/authentication/presentation/register_screen.dart';
import 'package:cafe_app/features/profile/presentation/profile_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<User?> authState = ref.watch(authStateProvider);

    bool isLoginMode = ref.watch(isLoginProvider);

    return authState.when(
      data: (User? user) {
        if (user != null) {
          return const ProfileScreen();
        }

        return isLoginMode ? const LoginScreen() : const RegisterScreen();
      },

      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),

      error: (Object error, StackTrace stackTrace) => Scaffold(
        body: Center(child: Text('error_message'.tr( namedArgs: <String, String>{'error': error.toString()},))),
      ),
    );
  }
}
