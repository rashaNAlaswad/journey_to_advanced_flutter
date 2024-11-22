import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_font_weight.dart';

class AppStyles {
  static TextStyle? font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.black,
  );

  static TextStyle? font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.primaryBlue,
  );

  static TextStyle font10GrayRegular = TextStyle(
    fontSize: 10.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.gray,
  );

  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.medium,
    color: Colors.white,
  );
}
