import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginOrDivider extends StatelessWidget {
  const LoginOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: <Widget>[
        Expanded(child: Divider(color: Colors.black.withValues(alpha: 0.08))),
        Text(
          'or_continue_with'.tr(),
          style: GoogleFonts.sora(
            fontSize: 11.5,
            fontWeight: FontWeight.w700,
            color: Colors.black.withValues(alpha: 0.45),
          ),
        ),
        Expanded(child: Divider(color: Colors.black.withValues(alpha: 0.08))),
      ],
    );
  }
}
