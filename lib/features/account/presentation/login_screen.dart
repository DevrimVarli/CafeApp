import 'package:cafe_app/features/account/controller/is_login.dart';
import 'package:cafe_app/features/account/controller/obsecure_ctrl.dart';
import 'package:cafe_app/features/account/controller/remember_me_ctr.dart';
import 'package:cafe_app/features/account/data/google_sign_in.dart';
import 'package:cafe_app/features/account/data/sign_in_repository.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_form_card.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_hero_header.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passCtrl = TextEditingController();

  final bool _loading = false;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool _obscure = ref.watch(obsecureCtrlProvider);
    bool _rememberMe = ref.watch(rememberMeCtrProvider);
    MediaQueryData media = MediaQuery.of(context);
    double topH = media.size.height * 0.33;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F8),
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
                  children: <Widget>[
                    Container(
                      width: 46,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(999),
                      ),
                    ),
                    const SizedBox(height: 14),
                    LoginFormCard(
                      formKey: _formKey,
                      emailCtrl: _emailCtrl,
                      passCtrl: _passCtrl,
                      obscure: _obscure,
                      rememberMe: _rememberMe,
                      loading: _loading,
                      onToggleObscure: () =>
                          ref.read(obsecureCtrlProvider.notifier).change(),
                      onRememberMeChanged: (bool v) =>
                          ref.read(rememberMeCtrProvider.notifier).change(),
                      onLoginTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          ref.read(
                            signInRepositoryProvider(
                              email: _emailCtrl.text,
                              password: _passCtrl.text,
                              context: context,
                            ),
                          );
                        }
                      },
                      onForgotTap: () {},
                      onGoogleTap: () =>
                          ref.read(signInWithGoogleProvider(context)),
                      onAppleTap: () {},
                      onCreateAccountTap: () =>
                          ref.read(isLoginProvider.notifier).change(),
                    ),
                    const SizedBox(height: 14),
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
