import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavChip extends StatelessWidget {
  const FavChip({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: Colors.black.withValues(alpha: 0.05),
      ),
      child: Text(
        text.toUpperCase(),
        style: GoogleFonts.sora(
          fontSize: 10,
          fontWeight: FontWeight.w800,
          color: Colors.black.withValues(alpha: 0.65),
          letterSpacing: 0.4,
        ),
      ),
    );
  }
}
