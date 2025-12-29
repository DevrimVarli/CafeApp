import 'package:cafe_app/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart'; 
import 'package:flutter/material.dart';

class StoresAppBar extends StatelessWidget {
  const StoresAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: AppColors.background,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.primaryOrange,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: Text(
        'branches_title'.tr(), 
        style: const TextStyle(
          color: AppColors.primaryOrange,
          fontWeight: FontWeight.w900,
          fontSize: 22,
          letterSpacing: -0.3,
        ),
      ),
    );
  }
}
