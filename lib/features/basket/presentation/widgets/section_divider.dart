import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Divider(thickness: 1, color: Color(0xFFEAEAEA)),
    );
  }
}
