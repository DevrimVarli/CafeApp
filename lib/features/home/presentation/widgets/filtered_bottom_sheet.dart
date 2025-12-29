import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/home/controller/categories_index.dart';
import 'package:cafe_app/features/home/data/categories_data_repository.dart';
import 'package:cafe_app/features/home/domain/categories_model.dart';
import 'package:cafe_app/utils/shimmer_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilteredBottomSheet {
  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (_) => const _FilteredBottomSheetBody(),
    );
  }
}

class _FilteredBottomSheetBody extends ConsumerWidget {
  const _FilteredBottomSheetBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<CategoriesModel>> categoriesAsync = ref.watch(categoriesDataRepositoryProvider);
    int selectedIndex = ref.watch(categoriesIndexProvider);

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 16),
        child: Column(
          children: <Widget>[
            Container(
              width: 44,
              height: 5,
              decoration: BoxDecoration(
                color: AppColors.textDark.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(99),
              ),
            ),
            const SizedBox(height: 14),

            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'categories'.tr(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: AppColors.textDark,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close_rounded),
                  color: AppColors.textDark.withValues(alpha: 0.6),
                ),
              ],
            ),
            const SizedBox(height: 10),

            Expanded(
              child: categoriesAsync.when(
                data: (List<CategoriesModel> data) {
                  return GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(bottom: 10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 3.2, 
                        ),
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      CategoriesModel category = data[index];
                      bool isSelected = index == selectedIndex;

                      return InkWell(
                        borderRadius: BorderRadius.circular(14),
                        onTap: () {
                          ref
                              .read(categoriesIndexProvider.notifier)
                              .changeIndex(index);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 160),
                          curve: Curves.easeOut,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primaryOrange.withValues(
                                    alpha: 0.12,
                                  )
                                : Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primaryOrange
                                  : Colors.black.withValues(alpha: 0.08),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.04),
                                blurRadius: 10,
                                offset: const Offset(0, 6),
                              ),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  category.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w800,
                                    color: isSelected
                                        ? AppColors.primaryOrange
                                        : AppColors.textDark,
                                  ),
                                ),
                              ),
                              if (isSelected)
                                const Icon(
                                  Icons.check_circle_rounded,
                                  size: 18,
                                  color: AppColors.primaryOrange,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                loading: () => GridView.builder(
                  padding: const EdgeInsets.only(bottom: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 3.2,
                  ),
                  itemCount: 8,
                  itemBuilder: (_, __) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ).applyShimmer();
                  },
                ),
                error: (Object err, StackTrace stack) => Center(
                  child: Text(
                    'generic_error'.tr(
                      namedArgs: <String, String>{'error': err.toString()},
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryOrange,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'apply'.tr(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
