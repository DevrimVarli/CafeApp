import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/basket/presentation/widgets/app_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyStateSection extends StatelessWidget {
  const EmptyStateSection({
    super.key,
    required this.headerTitle, // Örn: "Teslimat Şubesi"
    required this.statusTitle, // Örn: "Şube Seçilmedi"
    required this.description, // Örn: "Sipariş vermek için..."
    required this.buttonText, // Örn: "Şube Seç"
    required this.buttonIcon, // İkonu da dinamik yaptık
    required this.onTap,
  });

  final String headerTitle;
  final String statusTitle;
  final String description;
  final String buttonText;
  final IconData buttonIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          headerTitle,
          style: GoogleFonts.sora(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          statusTitle,
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          description,
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: AppColors.textLight,
          ),
        ),
        const SizedBox(height: 14),

        AppOutlinedButton(icon: buttonIcon, text: buttonText, onTap: onTap),
      ],
    );
  }
}
