import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_label.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_or_divider.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_social_button.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_text_field_fancy.dart';
import 'package:cafe_app/utils/validators.dart';
import 'package:easy_localization/easy_localization.dart'; // Sadece bunu eklemen yeterli
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFormCard extends StatelessWidget {
  const LoginFormCard({
    super.key,
    required this.formKey,
    required this.emailCtrl,
    required this.passCtrl,
    required this.obscure,
    required this.rememberMe,
    required this.loading,
    required this.onToggleObscure,
    required this.onRememberMeChanged,
    required this.onLoginTap,
    required this.onForgotTap,
    required this.onGoogleTap,
    required this.onAppleTap,
    required this.onCreateAccountTap,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailCtrl;
  final TextEditingController passCtrl;

  final bool obscure;
  final bool rememberMe;
  final bool loading;

  final VoidCallback onToggleObscure;
  final ValueChanged<bool> onRememberMeChanged;

  final VoidCallback onLoginTap;
  final VoidCallback onForgotTap;
  final VoidCallback onGoogleTap;
  final VoidCallback onAppleTap;
  final VoidCallback onCreateAccountTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 28,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'login_title'.tr(), // JSON'daki "Giriş"
              style: GoogleFonts.sora(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            LoginLabel('email_label'.tr()), // "E-posta" (const kaldırıldı)
            const SizedBox(height: 8),
            LoginTextFieldFancy(
              controller: emailCtrl,
              hint: 'email_hint'.tr(), // "name@email.com"
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.alternate_email_rounded,
              validator: AddressValidators.email,
            ),
            const SizedBox(height: 14),
            LoginLabel('password_label'.tr()), // "Şifre" (const kaldırıldı)
            const SizedBox(height: 8),
            LoginTextFieldFancy(
              controller: passCtrl,
              hint: 'password_hint'.tr(), // "••••••••"
              prefixIcon: Icons.lock_rounded,
              obscureText: obscure,
              validator: AddressValidators.password,
              suffix: IconButton(
                onPressed: onToggleObscure,
                icon: Icon(
                  obscure
                      ? Icons.visibility_rounded
                      : Icons.visibility_off_rounded,
                  color: Colors.black.withValues(alpha: 0.55),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                Checkbox(
                  value: rememberMe,
                  activeColor: AppColors.primaryOrange,
                  onChanged: (bool? v) => onRememberMeChanged(v ?? true),
                ),
                Expanded(
                  child: Text(
                    'remember_me'.tr(), // "Beni hatırla"
                    style: GoogleFonts.sora(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withValues(alpha: 0.7),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: onForgotTap,
                  child: Text(
                    'forgot_password'.tr(), // "Unuttum?"
                    style: GoogleFonts.sora(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primaryOrange,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  elevation: 0,
                ),
                onPressed: onLoginTap,
                child: loading
                    ? const SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.4,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      )
                    : Text(
                        'sign_in'.tr(), // "Giriş Yap"
                        style: GoogleFonts.sora(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 14),
            const LoginOrDivider(),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(
                  child: LoginSocialButton(
                    text: 'google_btn'.tr(), // "Google"
                    icon: Icons.g_mobiledata_rounded,
                    onTap: onGoogleTap,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: LoginSocialButton(
                    text: 'apple_btn'.tr(), // "Apple"
                    icon: Icons.apple_rounded,
                    onTap: onAppleTap,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'dont_have_account'.tr(), // "Hesabın yok mu?"
                  style: GoogleFonts.sora(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(width: 6),
                GestureDetector(
                  onTap: onCreateAccountTap,
                  child: Text(
                    'create_one'.tr(), // "Oluştur"
                    style: GoogleFonts.sora(
                      fontSize: 12.8,
                      fontWeight: FontWeight.w900,
                      color: AppColors.primaryOrange,
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