import 'package:easy_localization/easy_localization.dart'; // Bunu eklemeyi unutma
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginHeroHeader extends StatelessWidget {
  const LoginHeroHeader({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://images.unsplash.com/photo-1511920170033-f8396924c348?q=80&w=1200&auto=format&fit=crop',
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) =>
                Container(color: Colors.black.withValues(alpha: 0.1)),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.black.withValues(alpha: 0.55),
                  Colors.black.withValues(alpha: 0.15),
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 56, 20, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Spacer(flex: 2),
                Text(
                  'welcome_back'.tr(), // JSON: "Tekrar Hoş Geldin"
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'login_subtitle'
                      .tr(), // JSON: "Kahve yolculuğuna devam et..."
                  style: GoogleFonts.sora(
                    color: Colors.white.withValues(alpha: 0.88),
                    fontSize: 13.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
