import 'package:cafe_app/features/favorite/presentation/widgets/favorites_empty.dart';
import 'package:cafe_app/features/favorite/presentation/widgets/premium_fav_card.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/adapters.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Box<CoffieModel> favoritesBox = Hive.box<CoffieModel>('favoriler');

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'favorites'.tr(),
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w800,
            color: Colors.black87,
            fontSize: 22,
          ),
        ),
      ),
      body: ValueListenableBuilder<Box<CoffieModel>>(
        valueListenable: favoritesBox.listenable(),
        builder: (BuildContext context, Box<CoffieModel> box, _) {
          List<CoffieModel> favorites = box.values.toList();

          if (favorites.isEmpty) {
            return const FavoritesEmpty();
          }

          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            itemCount: favorites.length,
            separatorBuilder: (_, __) => const SizedBox(height: 14),
            itemBuilder: (BuildContext context, int i) {
              CoffieModel coffee = favorites[i];
              return PremiumFavCard(coffee: coffee, box: box);
            },
          );
        },
      ),
    );
  }
}
