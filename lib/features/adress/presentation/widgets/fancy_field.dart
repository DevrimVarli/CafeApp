import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FancyField extends StatelessWidget {
  const FancyField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    required this.prefix,
    this.validator,
    this.keyboardType,
    this.maxLines = 1,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData prefix;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: GoogleFonts.sora(
            fontSize: 12,
            fontWeight: FontWeight.w800,
            color: Colors.black.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          maxLines: maxLines,
          style: GoogleFonts.sora(
            fontSize: 13.4,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.sora(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black.withValues(alpha: 0.35),
            ),
            prefixIcon: Icon(
              prefix,
              color: Colors.black.withValues(alpha: 0.55),
            ),
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
        ),
      ],
    );
  }
}
