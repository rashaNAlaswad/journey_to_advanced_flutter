import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/router/routes.dart';

import '../../../../core/utils/app_text_styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: '''Don't have an account?''',
            style: AppTextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: AppTextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signup);
              },
          ),
        ],
      ),
    );
  }
}
