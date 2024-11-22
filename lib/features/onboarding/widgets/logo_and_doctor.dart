import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_styles.dart';

class LogoAndDoctor extends StatelessWidget {
  const LogoAndDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.appLogo),
        horizontalSpace(8),
        Text(
          'DocDoc',
          style: AppStyles.font24BlackBold,
        ),
      ],
    );
  }
}
