import 'package:cafe_app/features/detail/presentation/detail_screen.dart';
import 'package:cafe_app/features/home/controller/categories_index.dart';
import 'package:cafe_app/features/home/data/categories_data_repository.dart';
import 'package:cafe_app/features/home/data/coffie_data_repository.dart';
import 'package:cafe_app/features/home/domain/categories_model.dart';
import 'package:cafe_app/features/home/domain/coffie_model.dart';
import 'package:cafe_app/utils/get_categories_coffies.dart';
import 'package:cafe_app/utils/shimmer_extension.dart';
import 'package:easy_localization/easy_localization.dart'; // Eklendi
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductGridView extends ConsumerStatefulWidget {
  const ProductGridView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductGridViewState();
}

class _ProductGridViewState extends ConsumerState<ProductGridView> {
  @override
  Widget build(BuildContext context) {
    int index = ref.watch(categoriesIndexProvider);
    AsyncValue<List<CoffieModel>> asyncCoffies = ref.watch(
      coffieDataRepositoryProvider,
    );
    AsyncValue<List<CategoriesModel>> asyncCategories = ref.watch(
      categoriesDataRepositoryProvider,
    );

    if (asyncCoffies.isLoading || asyncCategories.isLoading) {
      return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ).applyShimmer();
        },
      );
    }

    if (asyncCoffies.hasError) {
      return Center(
        child: Text(
          'coffee_error'.tr(namedArgs: <String, String>{'error': '${asyncCoffies.error}'}),
        ),
      );
    }
    if (asyncCategories.hasError) {
      return Center(
        child: Text(
          'category_error'.tr(namedArgs: <String, String>{'error': '${asyncCategories.error}'}),
        ),
      );
    }

    List<CoffieModel>? coffies = asyncCoffies.valueOrNull;
    List<CategoriesModel>? categories = asyncCategories.valueOrNull;

    if (coffies == null || categories == null) {
      return Center(child: Text('data_not_found'.tr())); // "Veri bulunamadı."
    }

    List<CoffieModel> filteredData = getCategoriesCoffies(
      coffies,
      index,
      categories,
    );

    if (filteredData.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'no_products_in_category'.tr(), // "Bu kategoride ürün bulunamadı."
          ),
        ),
      );
    }

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
      itemCount: filteredData.length,
      itemBuilder: (BuildContext context, int index) {
        CoffieModel coffie = filteredData[index];
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<Widget>(
                        builder: (BuildContext context) =>
                            DetailScreen(coffieModel: coffie),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.network(
                      coffie.image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      loadingBuilder:
                          (
                            BuildContext context,
                            Widget child,
                            ImageChunkEvent? loadingProgress,
                          ) {
                            if (loadingProgress == null) return child;

                            return Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.white,
                            ).applyShimmer();
                          },
                      errorBuilder:
                          (
                            BuildContext context,
                            Object error,
                            StackTrace? stackTrace,
                          ) => const Center(
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.grey,
                            ),
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      coffie.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '\$${coffie.sizes.isNotEmpty ? coffie.sizes.first.price : "0"}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
