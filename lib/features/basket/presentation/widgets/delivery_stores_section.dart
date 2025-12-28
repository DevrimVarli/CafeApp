import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/basket/presentation/widgets/delivery_address_section.dart';
import 'package:cafe_app/features/home/controller/selected_store.dart';
import 'package:cafe_app/router/app_router_name.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryStoresSection extends ConsumerWidget {
  const DeliveryStoresSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore.name.isEmpty) {
      return _EmptyStore(
        onSelect: () =>
            context.push(AppRouterName.stores), // Mağaza seçme ekranına git
      );
    }

    // 3. Dolu mağaza durumu
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'delivery_store'
              .tr(), // "Teslimat Şubesi" (Json'a eklemeyi unutmayın)
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
                  // Mağaza Adı
                  Text(
                    selectedStore.name,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.textDark,
                    ),
                  ),

                  // Mağaza Adresi / Konumu
                  // (Modelinizde 'address' alanı yoksa 'location' vb. ile değiştirin)
                  Text(
                    selectedStore.address,
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.textDark,
                      height: 1.25,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  // Opsiyonel: Mağaza çalışma saatleri veya durumu
                  if (selectedStore.openingHours == true) // Modelde varsa
                    Text(
                      'open_now'.tr(), // "Şu an Açık"
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.green,
                      ),
                    ),
                ],
              ),
            ),

            // Değiştir Butonu
            OutlinedBtn(
              icon: Icons.storefront_outlined,
              text: 'change'.tr(), // "Değiştir"
              onTap: () {
                // Mağaza listesi veya harita sayfasına yönlendirme
                context.push(AppRouterName.stores);
              },
            ),
          ],
        ),
      ],
    );
  }
}

// Adres yerine Store için özelleştirilmiş boş durum
class _EmptyStore extends StatelessWidget {
  const _EmptyStore({required this.onSelect});
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'delivery_store'.tr(),
          style: GoogleFonts.sora(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'store_not_selected'.tr(), // "Mağaza Seçilmedi"
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          'start_by_selecting_store'
              .tr(), // "Sipariş vermek için bir şube seçin."
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: AppColors.textLight,
          ),
        ),
        const SizedBox(height: 14),
        OutlinedBtn(
          icon: Icons.store_mall_directory_outlined,
          text: 'select_store'.tr(), // "Şube Seç"
          onTap: onSelect,
        ),
      ],
    );
  }
}
