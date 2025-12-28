import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/adress/controller/selected_address.dart';
import 'package:cafe_app/features/adress/domain/address_model.dart';
import 'package:cafe_app/router/app_router_name.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class DeliveryAddressSection extends ConsumerWidget {
  const DeliveryAddressSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Box<AddressModel> adresBox = Hive.box<AddressModel>('adresler');

    return ValueListenableBuilder<Box<AddressModel>>(
      valueListenable: adresBox.listenable(),
      builder: (BuildContext context, Box<AddressModel> box, _) {
        if (box.isEmpty) {
          return _EmptyAddress(
            onAdd: () => context.push(AppRouterName.address),
          );
        }

        AddressModel address =
            ref.watch(selectedAddressProvider).title.isEmpty
                ? box.values.first
                : ref.watch(selectedAddressProvider);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'delivery_address'.tr(), // "Teslimat Adresi"
              style: GoogleFonts.sora(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColors.textDark,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        address.title,
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.textDark,
                        ),
                      ),

                      Text(
                        '${address.districtName} / ${address.cityName}',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.textDark,
                          height: 1.25,
                        ),
                      ),

                      Text(
                        '${address.phoneNumber} / ${address.fullName}',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.textDark,
                          height: 1.25,
                        ),
                      ),
                    ],
                  ),
                ),
                OutlinedBtn(
                  icon: Icons.change_circle,
                  text: 'change'.tr(), // "Değiştir"
                  onTap: () {
                    context.push(AppRouterName.change);
                  },
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              children: <Widget>[
                OutlinedBtn(
                  icon: Icons.edit_location_outlined,
                  text: 'edit_address'.tr(), // "Adresi Düzenle"
                  onTap:
                      () => context.pushNamed(
                        AppRouterName.address,
                        extra: address,
                      ),
                ),
                const SizedBox(width: 12),
                OutlinedBtn(
                  icon: Icons.note_add_outlined,
                  text: 'add_address'.tr(), // "Adres Ekle"
                  onTap: () => context.push(AppRouterName.address),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class OutlinedBtn extends StatelessWidget {
  const OutlinedBtn({
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 16, color: AppColors.textDark),
            const SizedBox(width: 6),
            Text(
              text,
              style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: AppColors.textDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyAddress extends StatelessWidget {
  const _EmptyAddress({required this.onAdd});
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'delivery_address'.tr(), // "Teslimat Adresi"
          style: GoogleFonts.sora(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'address_not_found'.tr(), // "Adres Bulunamadı"
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          'start_by_adding_address'.tr(), // "Yeni bir adres ekleyerek başlayın."
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: AppColors.textLight,
          ),
        ),
        const SizedBox(height: 14),
        OutlinedBtn(
          icon: Icons.add_location_alt_outlined,
          text: 'add_address'.tr(), // "Adres Ekle"
          onTap: onAdd,
        ),
      ],
    );
  }
}
