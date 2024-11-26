import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../cubit/login_cubit.dart';
import 'widgets/dont_have_account_text.dart';
import 'widgets/email_and_password.dart';
import 'widgets/login_bloc_listener.dart';
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
                style: AppTextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                '''We're excited to have you back, can't wait to see what you've been up to since you last logged in.''',
                style: AppTextStyles.font14GrayRegular,
              ),
              verticalSpace(36),
              const EmailAndPassword(),
              verticalSpace(36),
              AppTextButton(
                  buttonText: 'Login',
                  textStyle: AppTextStyles.font16WhiteSemiBold,
                  onPressed: () {
                    validateThenDoLogin(context);
                  }),
              verticalSpace(16),
              const TermsAndConditionsText(),
              verticalSpace(24),
              const Align(
                  alignment: Alignment.center, child: DontHaveAccountText()),
              const LoginBlocListener(),
            ],
          ),
        ),
      ),
    ));
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
