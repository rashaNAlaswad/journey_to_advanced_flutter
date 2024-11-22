import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/app_colors.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppAssets.onboardingBackground),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.white,
                AppColors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: const Image(
            image: AssetImage(AppAssets.onboardingDoctor),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: AppStyles.font32BlueBold,
          ),
        ),
      ],
    );
  }
}
