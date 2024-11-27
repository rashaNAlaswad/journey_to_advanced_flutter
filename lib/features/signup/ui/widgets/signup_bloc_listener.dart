import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../cubit/signup_cubit.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryBlue,
                ),
              ),
            );
          },
          signupSuccess: (signupResponse) {
            context.pop();
            showSuccessDialog(context);
          },
          signupError: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.login);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            icon: const Icon(
              Icons.error,
              color: Colors.red,
              size: 32,
            ),
            content: Text(
              apiErrorModel.getAllErrorMessages(),
              style: AppTextStyles.font15DarkBlueMedium,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Got it',
                  style: AppTextStyles.font14BlueSemiBold,
                ),
              ),
            ],
          );
        });
  }
}
