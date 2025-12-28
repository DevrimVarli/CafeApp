import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/home/controller/categories_index.dart';
import 'package:cafe_app/features/home/data/categories_data_repository.dart';
import 'package:cafe_app/features/home/domain/categories_model.dart';
import 'package:cafe_app/utils/shimmer_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryListSection extends ConsumerWidget {
  const CategoryListSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<CategoriesModel>> categoriesAsync = ref.watch(
      categoriesDataRepositoryProvider,
    );
    int categoriesIndex = ref.watch(categoriesIndexProvider);

    return SizedBox(
      height: 50,
      child: categoriesAsync.when(
        data: (List<CategoriesModel> data) {
          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (BuildContext context, int index) {
              CategoriesModel category = data[index];
              bool isSelected = index == categoriesIndex;

              return GestureDetector(
                onTap: () {
                  ref.read(categoriesIndexProvider.notifier).changeIndex(index);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primaryOrange : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      category.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: isSelected ? Colors.white : Colors.black87,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        loading: () => SizedBox(
          height: 40,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ).applyShimmer();
            },
          ),
        ),
        error: (Object err, StackTrace stack) =>
            Center(child: Text('generic_error'.tr(namedArgs: <String, String>{'error': err.toString()},))),
      ),
    );
  }
}
