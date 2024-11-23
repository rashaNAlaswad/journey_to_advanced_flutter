import 'package:flutter/material.dart';

import '../../core/helper/spacing.dart';
import '../../core/utils/app_styles.dart';
import '../../core/widgets/app_text_button.dart';
import 'widgets/dont_have_account_text.dart';
import 'widgets/email_and_password.dart';
import 'widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back',
                style: AppStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                '''We're excited to have you back, can't wait to see what you've been up to since you last logged in.''',
                style: AppStyles.font14GrayRegular,
              ),
              verticalSpace(36),
              const EmailAndPassword(),
              verticalSpace(60),
              AppTextButton(
                  buttonText: 'Login',
                  textStyle: AppStyles.font16WhiteSemiBold,
                  onPressed: () {}),
              verticalSpace(16),
              const TermsAndConditionsText(),
              verticalSpace(24),
              const Align(
                  alignment: Alignment.center, child: DontHaveAccountText()),
            ],
          ),
        ),
      ),
    ));
  }
}
