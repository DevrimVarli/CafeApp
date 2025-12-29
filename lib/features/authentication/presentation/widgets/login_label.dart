import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginLabel extends StatelessWidget {
  const LoginLabel(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.sora(
        fontSize: 12.5,
        fontWeight: FontWeight.w800,
        color: Colors.black.withValues(alpha: 0.75),
      ),
    );
  }
}
