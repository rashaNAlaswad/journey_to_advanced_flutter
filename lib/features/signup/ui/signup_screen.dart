import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../login/ui/widgets/terms_and_conditions_text.dart';
import '../cubit/signup_cubit.dart';
import 'widgets/already_have_account_text.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/signup_bloc_listener.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: AppTextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  '''Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!''',
                  style: AppTextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                const SignupForm(),
                verticalSpace(36),
                AppTextButton(
                  buttonText: "Create Account",
                  textStyle: AppTextStyles.font16WhiteSemiBold,
                  onPressed: () {
                    validateThenDoSignup(context);
                  },
                ),
                verticalSpace(16),
                const TermsAndConditionsText(),
                verticalSpace(24),
                const Align(
                    alignment: Alignment.center,
                    child: AlreadyHaveAccountText()),
                const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
