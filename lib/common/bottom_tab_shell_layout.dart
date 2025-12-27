
import 'package:cafe_app/common/bottom_app_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomTabShellLayout extends StatelessWidget {
  const BottomTabShellLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const BottomAppNavigationBar(),
    );
  }
}
