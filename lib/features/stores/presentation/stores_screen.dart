import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/stores/data/stores_data_repository.dart';
import 'package:cafe_app/features/stores/domain/stores_model.dart';
import 'package:cafe_app/features/stores/presentation/widgets/premium_store_card.dart';
import 'package:cafe_app/features/stores/presentation/widgets/stores_app_bar.dart';
import 'package:cafe_app/features/stores/presentation/widgets/stores_empty_state.dart';
import 'package:cafe_app/features/stores/presentation/widgets/stores_error_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoresScreen extends ConsumerStatefulWidget {
  const StoresScreen({super.key});

  @override
  ConsumerState<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends ConsumerState<StoresScreen> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<StoresModel>> asyncStores = ref.watch(
      storesDataRepositoryProvider,
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      body: asyncStores.when(
        data: (List<StoresModel> stores) {
          return CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: <Widget>[
              const StoresAppBar(),
              if (stores.isEmpty)
                const SliverFillRemaining(
                  hasScrollBody: false,
                  child: StoresEmptyState(),
                )
              else
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 18),
                  sliver: SliverList.separated(
                    itemCount: stores.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 14),
                    itemBuilder: (BuildContext context, int i) {
                      return PremiumStoreCardV2(store: stores[i]);
                    },
                  ),
                ),
            ],
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primaryOrange),
        ),
        error: (Object e, StackTrace s) => StoresErrorState(
          errorText: 'generic_error'.tr(args: [e.toString()]),
          onRetry: () => ref.refresh(storesDataRepositoryProvider),
        ),
      ),
    );
  }
}
