import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddressAppBar({super.key, required this.title});

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.sora(
          fontWeight: FontWeight.w900,
          fontSize: 16.5,
          color: Colors.black87,
        ),
      ),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}
