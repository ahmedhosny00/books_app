import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/core/utils/app_text_style.dart';
import 'package:projct/core/widgets/custom_botton.dart';
import 'package:projct/features/login/widgets/dont_have_accont.dart';
import 'package:projct/features/login/widgets/or_login_with.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/custtom_back_botton.dart';
import '../widgets/your_voice_print_botton.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isObscureTest = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D5CB),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackBotton(),
                SizedBox(height: 20.h),
                Text(AppStrings.welcome, style: AppTextStyle.textStyle24w700()),
                SizedBox(height: 30.h),
                const CustomTextFormField(
                  hintText: AppStrings.enterYourEmail,
                ),
                SizedBox(height: 10.h),
                CustomTextFormField(
                  hintText: AppStrings.enterYourPassword,
                  isObscureText: isObscureTest,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscureTest = !isObscureTest;
                      });
                    },
                    child: Icon(
                      isObscureTest ? Icons.visibility : Icons.visibility_off,
                      size: 20.sp,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(AppStrings.forgotPassword,
                      style: AppTextStyle.textStyle14w400())
                ]),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
                  },
                  child: CustomButton(
                    buttontext: AppStrings.login,
                    textStyle: AppTextStyle.textStyle15w600(),
                    backgroundColor: AppColors.dark40,
                  ),
                ),
                SizedBox(height: 40.h),
                const OrLoginWith(),
                SizedBox(height: 20.h),
                GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const ****()));
                    },
                    child: const YourVoicePrintBotton()),
                SizedBox(height: 150.h),
                const DontHaveAccount(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
