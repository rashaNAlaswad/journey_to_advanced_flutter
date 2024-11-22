import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';

class OnboardingDescription extends StatelessWidget {
  const OnboardingDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
      style: AppStyles.font10GrayRegular,
      textAlign: TextAlign.center,
    );
  }
}
