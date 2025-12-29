import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/authentication/domain/user_model.dart';
import 'package:cafe_app/features/basket/presentation/widgets/soft_background_decor.dart';
import 'package:cafe_app/features/profile/data/profile_data_repository.dart';
import 'package:cafe_app/features/profile/presentation/widgets/language_bottom_sheet.dart';
import 'package:cafe_app/features/profile/presentation/widgets/profile_header.dart';
import 'package:cafe_app/features/profile/presentation/widgets/profile_logout_button.dart';
import 'package:cafe_app/features/profile/presentation/widgets/profile_settings_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<DocumentSnapshot<Map<String, dynamic>>> userAsync = ref.watch(
      getUserDataProvider,
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          'my_account'.tr(),
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            color: AppColors.textDark,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: userAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primaryOrange),
        ),
        error: (Object err, StackTrace stack) => Center(
          child: Text(
            'generic_error'.tr(namedArgs: <String, String>{'error': '$err'}),
          ),
        ),
        data: (DocumentSnapshot<Map<String, dynamic>> snapshot) {
          if (!snapshot.exists || snapshot.data() == null) {
            return Center(child: Text('user_not_found'.tr()));
          }

          UserModel user = UserModel.fromJson(snapshot.data()!);

          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              const SoftBackgroundDecor(),
              const SizedBox(height: 20),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    ProfileHeader(
                      user: user,
                      primaryColor: AppColors.primaryOrange,
                      textColor: AppColors.textDark,
                    ),

                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'general_settings'.tr(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),

                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: AppColors.primaryOrange.withValues(
                              alpha: 0.08,
                            ),
                            blurRadius: 24,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          ProfileSettingsTile(
                            icon: Icons.dark_mode_outlined,
                            title: 'dark_mode'.tr(),
                            primaryColor: AppColors.primaryOrange,
                            textColor: AppColors.textDark,
                            isLast: false,
                            trailing: Switch.adaptive(
                              value: false,
                              onChanged: (bool val) {},
                              activeTrackColor: AppColors.primaryOrange,
                              inactiveThumbColor: AppColors.textDark,
                            ),
                          ),
                          ProfileSettingsTile(
                            icon: Icons.language_outlined,
                            title: 'language_option'.tr(),
                            primaryColor: AppColors.primaryOrange,
                            textColor: AppColors.textDark,
                            isLast: true,
                            onTap: () => LanguageBottomSheet.show(context),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'language_${context.locale.languageCode}'
                                      .tr(), 
                                  style: TextStyle(
                                    color: AppColors.primaryOrange.withValues(
                                      alpha: 0.8,
                                    ),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                  color: AppColors.primaryOrange,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),
                    const ProfileLogoutButton(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
