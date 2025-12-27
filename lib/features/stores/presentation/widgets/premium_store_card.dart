import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/home/controller/selected_store.dart';
import 'package:cafe_app/features/stores/domain/stores_model.dart';
import 'package:cafe_app/features/stores/presentation/widgets/modern_expansion_tile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PremiumStoreCardV2 extends ConsumerWidget {
  const PremiumStoreCardV2({super.key, required this.store});
  final StoresModel store;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StoresModel selected = ref.watch(selectedStoreProvider);
    bool isSelected = selected.id == store.id;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () =>
            ref.read(selectedStoreProvider.notifier).setSelectedStore(store),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            border: Border.all(
              width: isSelected ? 1.6 : 1,
              color: isSelected
                  ? AppColors.primaryOrange.withValues(alpha: 0.75)
                  : Colors.black.withValues(alpha: 0.06),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: AppColors.primaryOrange.withValues(
                  alpha: isSelected ? 0.18 : 0.10,
                ),
                blurRadius: isSelected ? 30 : 22,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                child: SizedBox(
                  height: 62,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              AppColors.primaryOrange.withValues(alpha: 0.18),
                              const Color(0xFFD7CCC8).withValues(alpha: 0.20),
                              Colors.white.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 14,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 34,
                              height: 34,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.08),
                                    blurRadius: 18,
                                    offset: const Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.store_rounded,
                                size: 18,
                                color: AppColors.primaryOrange,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.9),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: Text(
                                store.city.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 10.5,
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.primaryOrange,
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (isSelected)
                        Positioned(
                          right: 14,
                          top: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primaryOrange,
                              borderRadius: BorderRadius.circular(999),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: AppColors.primaryOrange.withValues(
                                    alpha: 0.25,
                                  ),
                                  blurRadius: 16,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child:  Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.check_rounded,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'selected'.tr(),
                                  style: const TextStyle(
                                    fontSize: 11.5,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      store.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF2D2D2D),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: Colors.black.withValues(alpha: 0.45),
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            store.address,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black.withValues(alpha: 0.60),
                              fontSize: 13,
                              height: 1.25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    if (store.services.isNotEmpty)
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: store.services.take(6).map((String s) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.background,
                              borderRadius: BorderRadius.circular(999),
                              border: Border.all(
                                color: Colors.black.withValues(alpha: 0.06),
                              ),
                            ),
                            child: Text(
                              s,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.black.withValues(alpha: 0.70),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                  ],
                ),
              ),
              ModernExpansionTile(store: store),
            ],
          ),
        ),
      ),
    );
  }
}
