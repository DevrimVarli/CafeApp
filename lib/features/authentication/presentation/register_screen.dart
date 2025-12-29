import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/authentication/controller/is_loading.dart';
import 'package:cafe_app/features/authentication/controller/is_login.dart';
import 'package:cafe_app/features/authentication/controller/obsecure_ctrl.dart';
import 'package:cafe_app/features/authentication/data/sign_up_repository.dart';
import 'package:cafe_app/features/authentication/domain/user_model.dart';
import 'package:cafe_app/features/authentication/presentation/widgets/login_form_card.dart';
import 'package:cafe_app/features/authentication/presentation/widgets/login_hero_header.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passCtrl = TextEditingController();
  final TextEditingController _confirmPassCtrl = TextEditingController();

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _passCtrl.dispose();
    _confirmPassCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool _obscure = ref.watch(obsecureCtrlProvider);
    MediaQueryData media = MediaQuery.of(context);
    double topH = media.size.height * 0.33;
    bool _isLoading = ref.watch(isLoadingProvider);
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: <Widget>[
          LoginHeroHeader(height: topH),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF6F6F8),
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 18, 16, 26),
                child: Column(
                  spacing: 14,
                  children: <Widget>[
                    Container(
                      width: 46,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                    LoginFormCard(
                      isLogin: false,
                      formKey: _formKey,
                      nameCtrl: _nameCtrl,
                      emailCtrl: _emailCtrl,
                      passCtrl: _passCtrl,
                      obscure: _obscure,
                      loading: _isLoading,
                      onToggleObscure: () =>
                          ref.read(obsecureCtrlProvider.notifier).change(),
                      onMainTap: () => ref.read(
                        signUpRepositoryProvider(
                          context: context,
                          userModel: UserModel(
                            email: _emailCtrl.text,
                            password: _passCtrl.text,
                            fullName: _nameCtrl.text,
                          ),
                        ),
                      ),
                      onGoogleTap: () {},
                      onAppleTap: () {},
                      onSwitchTap: ref.read(isLoginProvider.notifier).change,
                    ),
                    Text(
                      'terms_privacy_policy'.tr(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sora(
                        fontSize: 11.2,
                        color: Colors.black.withValues(alpha: 0.45),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
