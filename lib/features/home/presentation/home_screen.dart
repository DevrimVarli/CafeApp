import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/home/presentation/widgets/category_list_section.dart';
import 'package:cafe_app/features/home/presentation/widgets/dark_background.dart';
import 'package:cafe_app/features/home/presentation/widgets/header_content.dart';
import 'package:cafe_app/features/home/presentation/widgets/product_grid_view.dart';
import 'package:cafe_app/features/home/presentation/widgets/promo_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    double headerHeight = size.height * 0.35;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          spacing: 24,
          children: <Widget>[
            SizedBox(
              height: headerHeight + 60,
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  DarkBackground(height: headerHeight),
                  const Positioned(
                    top: 60,
                    left: 20,
                    right: 20,
                    child: HeaderContent(),
                  ),
                  const Positioned(
                    bottom: 0,
                    left: 20,
                    right: 20,
                    child: PromoBanner(),
                  ),
                ],
              ),
            ),
            const CategoryListSection(),
            const ProductGridView(),
          ],
        ),
      ),
    );
  }
}
