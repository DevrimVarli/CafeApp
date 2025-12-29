import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextFieldFancy extends StatelessWidget {
  const LoginTextFieldFancy({
    super.key,
    required this.controller,
    required this.hint,
    required this.prefixIcon,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.suffix,
  });

  final TextEditingController controller;
  final String hint;
  final IconData prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: GoogleFonts.sora(
        fontSize: 13.5,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.sora(
          fontSize: 13.2,
          color: Colors.black.withValues(alpha: 0.35),
          fontWeight: FontWeight.w600,
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.black.withValues(alpha: 0.55),
        ),
        suffixIcon: suffix,
        filled: true,
        fillColor: const Color(0xFFF4F4F6),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        errorStyle: GoogleFonts.sora(
          fontSize: 11.5,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
