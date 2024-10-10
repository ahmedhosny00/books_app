import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/core/utils/app_strings.dart';
import 'package:projct/core/utils/app_text_style.dart';
import 'package:projct/core/widgets/custom_botton.dart';
import 'package:projct/features/login/view/login_view.dart';
import 'package:projct/features/onboarding/widgets/e_book_svg.dart';
import 'package:projct/features/onboarding/widgets/register_botton.dart';
import 'package:projct/features/register/view/register_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.tealCB,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Expanded(
              child: Image(
                  image: const AssetImage('assets/images/Rectangle 15.png'),
                  width: 352.w),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const EBookSVG(),
                SizedBox(height: 50.h),
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
                SizedBox(height: 16.h),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const RegisterView()));
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
      ),
    );
  }
}
