import 'package:cafe_app/constants/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFEAEAEA)),
      ),
      child: Row(
        children: <Widget>[
          const Icon(Icons.discount_outlined, color: AppColors.primaryOrange),
          const SizedBox(width: 12),
          Text(
            'campaigns'.tr(),
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.textDark,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: AppColors.textDark,
          ),
        ],
      ),
    );
  }
}
