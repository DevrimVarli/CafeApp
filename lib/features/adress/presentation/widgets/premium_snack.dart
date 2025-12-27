import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showPremiumSnack(
  BuildContext context,
  String text, {
  bool success = false,
}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 18),
        duration: const Duration(seconds: 2),
        content: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.14),
                blurRadius: 22,
                offset: const Offset(0, 12),
              ),
            ],
            border: Border.all(
              color: success
                  ? Colors.green.withValues(alpha: 0.25)
                  : Colors.redAccent.withValues(alpha: 0.22),
            ),
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: success
                      ? Colors.green.withValues(alpha: 0.14)
                      : Colors.redAccent.withValues(alpha: 0.14),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  success ? Icons.check_rounded : Icons.error_outline_rounded,
                  color: success ? Colors.green : Colors.redAccent,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  text,
                  style: GoogleFonts.sora(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
}
