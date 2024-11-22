import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/onboarding_description.dart';
import 'widgets/get_started_button.dart';
import '../../core/helper/spacing.dart';
import 'widgets/doctor_image_and_text.dart';
import 'widgets/logo_and_doctor.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const LogoAndDoctor(),
                verticalSpace(30),
                const DoctorImageAndText(),
                verticalSpace(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const OnboardingDescription(),
                      verticalSpace(20),
                      SizedBox(
                        height: 52.h,
                        child: const GetStartedButton(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
