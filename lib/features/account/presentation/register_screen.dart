import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/account/controller/is_login.dart';
import 'package:cafe_app/features/account/controller/obsecure_ctrl.dart';
import 'package:cafe_app/features/account/data/sign_up_repository.dart';
import 'package:cafe_app/features/account/domain/user_model.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_hero_header.dart';
import 'package:cafe_app/utils/validators.dart';
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

  final bool _loading = false;

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
    // Header yüksekliği
    double topH = media.size.height * 0.33;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F8),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: topH,
            child: LoginHeroHeader(height: topH),
          ),

          Positioned.fill(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: media.viewInsets.bottom + 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: topH - 30),
                  Container(
                    width: double.infinity,

                    decoration: const BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(28),
                      ),
                    ),
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
                        RegisterFormCard(
                          formKey: _formKey,
                          nameCtrl: _nameCtrl,
                          emailCtrl: _emailCtrl,
                          passCtrl: _passCtrl,
                          confirmPassCtrl: _confirmPassCtrl,
                          obscure: _obscure,
                          loading: _loading,
                          onToggleObscure: () =>
                              ref.read(obsecureCtrlProvider.notifier).change(),
                          onRegisterTap: () {
                            if (!(_formKey.currentState?.validate() ?? false)) {
                              return;
                            }
                            ref.read(
                              signUpRepositoryProvider(
                                context: context,
                                userModel: UserModel(
                                  email: _emailCtrl.text,
                                  password: _passCtrl.text,
                                  fullName: _nameCtrl.text,
                                ),
                              ),
                            );
                          },
                          onLoginTap: () {
                            ref.read(isLoginProvider.notifier).change();
                          },
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegisterFormCard extends StatelessWidget {
  const RegisterFormCard({
    super.key,
    required this.formKey,
    required this.nameCtrl,
    required this.emailCtrl,
    required this.passCtrl,
    required this.confirmPassCtrl,
    required this.obscure,
    required this.loading,
    required this.onToggleObscure,
    required this.onRegisterTap,
    required this.onLoginTap,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController nameCtrl;
  final TextEditingController emailCtrl;
  final TextEditingController passCtrl;
  final TextEditingController confirmPassCtrl;
  final bool obscure;
  final bool loading;
  final VoidCallback onToggleObscure;
  final VoidCallback onRegisterTap;
  final VoidCallback onLoginTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              child: Text(
                'create_one'.tr(),
                style: GoogleFonts.sora(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // İsim Soyisim Alanı
            TextFormField(
              controller: nameCtrl,
              decoration: InputDecoration(
                labelText: 'name_surname'.tr(),
                labelStyle: GoogleFonts.sora(fontSize: 14, color: Colors.grey),
                prefixIcon: const Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              validator: AddressValidators.fullName,
            ),
            const SizedBox(height: 16),

            // Email Alanı
            TextFormField(
              controller: emailCtrl,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'email_label'.tr(),
                labelStyle: GoogleFonts.sora(fontSize: 14, color: Colors.grey),
                prefixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              validator: AddressValidators.email,
            ),
            const SizedBox(height: 16),

            // Şifre Alanı
            TextFormField(
              controller: passCtrl,
              obscureText: obscure,
              decoration: InputDecoration(
                labelText: 'password_label'.tr(),
                labelStyle: GoogleFonts.sora(fontSize: 14, color: Colors.grey),
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: onToggleObscure,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              validator: AddressValidators.password,
            ),
            const SizedBox(height: 16),

            // Kayıt Ol Butonu
            SizedBox(
              height: 56,
              child: ElevatedButton(
                onPressed: loading ? null : onRegisterTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: loading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : Text(
                        'sign_up'.tr(),
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'already_have_account'.tr(),
                  style: GoogleFonts.sora(color: Colors.grey[600]),
                ),
                GestureDetector(
                  onTap: onLoginTap,
                  child: Text(
                    'sign_in'.tr(),
                    style: GoogleFonts.sora(
                      color: AppColors.primaryOrange, // Senin tema rengin
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
