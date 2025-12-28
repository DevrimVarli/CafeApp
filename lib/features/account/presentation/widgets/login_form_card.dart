import 'package:cafe_app/constants/app_colors.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_label.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_or_divider.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_social_button.dart';
import 'package:cafe_app/features/account/presentation/widgets/login_text_field_fancy.dart';
import 'package:cafe_app/utils/validators.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFormCard extends StatelessWidget {
  const LoginFormCard({
    super.key,
    required this.formKey,
    required this.emailCtrl,
    required this.passCtrl,
    required this.obscure,
    required this.loading,
    required this.isLogin,

    this.nameCtrl,

    this.rememberMe,
    this.onRememberMeChanged,
    this.onForgotTap,

    required this.onToggleObscure,
    required this.onMainTap,
    required this.onGoogleTap,
    required this.onAppleTap,
    required this.onSwitchTap,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailCtrl;
  final TextEditingController passCtrl;

  final TextEditingController? nameCtrl;

  final bool obscure;
  final bool loading;

  final bool isLogin;

  final bool? rememberMe;
  final ValueChanged<bool>? onRememberMeChanged;
  final VoidCallback? onForgotTap;

  final VoidCallback onToggleObscure;

  final VoidCallback onMainTap;

  final VoidCallback onGoogleTap;
  final VoidCallback onAppleTap;

  final VoidCallback onSwitchTap;

  @override
  Widget build(BuildContext context) {
    String titleKey = isLogin ? 'login_title' : 'create_one';
    String mainBtnKey = isLogin ? 'sign_in' : 'sign_up';
    String bottomTextKey = isLogin
        ? 'dont_have_account'
        : 'already_have_account';
    String bottomActionKey = isLogin ? 'create_one' : 'sign_in';

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
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              child: Text(
                titleKey.tr(),
                style: GoogleFonts.sora(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                ),
              ),
            ),

            // ✅ Register ise Name Surname alanı göster
            if (!isLogin) ...<Widget>[
              LoginLabel('name_surname'.tr()),
              LoginTextFieldFancy(
                controller: nameCtrl!,
                hint: 'name_surname'.tr(),
                keyboardType: TextInputType.name,
                prefixIcon: Icons.person_rounded,
                validator: AddressValidators.fullName,
              ),
            ],

            LoginLabel('email_label'.tr()),
            LoginTextFieldFancy(
              controller: emailCtrl,
              hint: 'email_hint'.tr(),
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.alternate_email_rounded,
              validator: AddressValidators.email,
            ),

            LoginLabel('password_label'.tr()),
            LoginTextFieldFancy(
              controller: passCtrl,
              hint: 'password_hint'.tr(),
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

            // ✅ Login ise Remember + Forgot göster
            if (isLogin) ...<Widget>[
              Row(
                children: <Widget>[
                  Checkbox(
                    value: rememberMe ?? false,
                    activeColor: AppColors.primaryOrange,
                    onChanged: (bool? v) =>
                        onRememberMeChanged?.call(v ?? false),
                  ),
                  Expanded(
                    child: Text(
                      'remember_me'.tr(),
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
                      'forgot_password'.tr(),
                      style: GoogleFonts.sora(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primaryOrange,
                      ),
                    ),
                  ),
                ],
              ),
            ],

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
                onPressed: loading ? null : onMainTap,
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
                        mainBtnKey.tr(),
                        style: GoogleFonts.sora(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),

            const LoginOrDivider(),

            Row(
              spacing: 10,
              children: <Widget>[
                Expanded(
                  child: LoginSocialButton(
                    text: 'google_btn'.tr(),
                    icon: Icons.g_mobiledata_rounded,
                    onTap: onGoogleTap,
                  ),
                ),
                Expanded(
                  child: LoginSocialButton(
                    text: 'apple_btn'.tr(),
                    icon: Icons.apple_rounded,
                    onTap: onAppleTap,
                  ),
                ),
              ],
            ),

            Row(
              spacing: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  bottomTextKey.tr(),
                  style: GoogleFonts.sora(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withValues(alpha: 0.6),
                  ),
                ),
                GestureDetector(
                  onTap: onSwitchTap,
                  child: Text(
                    bottomActionKey.tr(),
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
