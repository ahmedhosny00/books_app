import 'package:flutter/material.dart';
import 'package:projct/core/utils/app_strings.dart';
import 'package:projct/core/utils/app_text_style.dart';
import 'package:projct/core/widgets/custom_botton.dart';
import 'package:projct/features/login/view/login_view.dart';
import 'package:projct/features/onboarding/widgets/register_botton.dart';
import 'package:projct/features/register/view/register_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Expanded(
            child: Image(
                image:  AssetImage('assets/images/logoicon.png'),
                width: 352),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(AppStrings.welcomeToWhatsUp,
                  style: AppTextStyle.textStyle24w700()),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
                child: CustomButton(
                  buttontext: AppStrings.login,
                  textStyle: AppTextStyle.textStyle15w600(),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterView()));
                },
                child: RegisterButton(
                  buttontext: AppStrings.register,
                  textStyle: AppTextStyle.textStyle15RedOrangew500(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
