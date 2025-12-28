import 'package:cafe_app/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileLogoutButton extends StatefulWidget {
  const ProfileLogoutButton({super.key});

  @override
  State<ProfileLogoutButton> createState() => _ProfileLogoutButtonState();
}

class _ProfileLogoutButtonState extends State<ProfileLogoutButton> {
  @override
  Widget build(BuildContext context) {
    context.locale;
    return TextButton(
      onPressed: () async {
        await FirebaseAuth.instance.signOut();
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.logout, color: AppColors.primaryOrange, size: 20),
          const SizedBox(width: 8),
          Text(
            'logout'.tr(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.primaryOrange,
            ),
          ),
        ],
      ),
    );
  }
}
