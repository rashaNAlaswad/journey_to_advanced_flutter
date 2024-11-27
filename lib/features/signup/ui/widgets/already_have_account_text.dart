import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/app_text_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: AppTextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: AppTextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.login);
              },
          ),
        ],
      ),
    );
  }
}
