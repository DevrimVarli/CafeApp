import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickUpPlaceholder extends StatelessWidget {
  const PickUpPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 12),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 24,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Pick Up Screen (tasarlayacağız)',
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w800,
              color: Colors.black.withValues(alpha: 0.55),
            ),
          ),
        ),
      ),
    );
  }
}
