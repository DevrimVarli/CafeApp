// --- BİLEŞENLER (COMPONENTS) ---

// 1. AppBar Bileşeni
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/adapters.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key, required this.coffieModel});
  final CoffieModel coffieModel;

  @override
  Widget build(BuildContext context) {
    Box<CoffieModel> favoriCoffieBox = Hive.box<CoffieModel>('favoriler');

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'detail'.tr(),
        style: GoogleFonts.sora(
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        ValueListenableBuilder<Box<CoffieModel>>(
          valueListenable: favoriCoffieBox.listenable(),
          builder:
              (BuildContext context, Box<CoffieModel> value, Widget? child) {
                bool isFavori = value.containsKey(coffieModel.id);
                return IconButton(
                  onPressed: () {
                    if (isFavori) {
                      favoriCoffieBox.delete(coffieModel.id);
                    } else {
                      favoriCoffieBox.put(coffieModel.id, coffieModel);
                    }
                  },
                  icon: isFavori
                      ? const Icon(Icons.favorite, color: Colors.red)
                      : const Icon(
                          Icons.favorite_outline_rounded,
                          color: Colors.black,
                        ),
                );
              },
        ),
      ],
    );
  }
}
