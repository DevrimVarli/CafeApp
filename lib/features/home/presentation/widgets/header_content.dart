import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/home/controller/selected_store.dart';
import 'package:cafe_app/features/stores/data/stores_data_repository.dart';
import 'package:cafe_app/features/stores/domain/stores_model.dart';
import 'package:cafe_app/router/app_router_name.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HeaderContent extends ConsumerWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<StoresModel>> liste = ref.watch(
      storesDataRepositoryProvider,
    );
    StoresModel selectedStore = ref.watch(selectedStoreProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'location'.tr(), // "Konum"
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: () {
            context.push(AppRouterName.stores);
          },
          child: Row(
            children: <Widget>[
              Text(
                selectedStore.name.isEmpty
                    ? 'select_branch'.tr() // "Şube Seçiniz"
                    : selectedStore.name,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.9),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.arrow_drop_down, color: Colors.white),
            ],
          ),
        ),
        const SizedBox(height: 24),
        // Arama ve Filtre Row'u
        Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.06),
                  hintText: 'search_coffee'.tr(), // "Kahve ara"
                  hintStyle: TextStyle(
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.primaryOrange,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.tune, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}