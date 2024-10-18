import 'package:flutter/material.dart';
import 'package:projct/core/utils/app_colors.dart';

import 'package:projct/features/onboarding/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: OnboardingViewBody(),
    );
  }
}
