import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/core/utils/app_strings.dart';
import 'package:projct/core/widgets/custom_botton.dart';
import 'package:projct/features/register/widgets/already_have_account.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/custtom_back_botton.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D5CB),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBackBotton(),
            SizedBox(height: 20.h),
            Text(AppStrings.helloRegister,
                style: AppTextStyle.textStyle24w700()),
            SizedBox(height: 30.h),
            const CustomTextFormField(
              hintText: AppStrings.username,
            ),
            SizedBox(height: 12.h),
            const CustomTextFormField(
              hintText: AppStrings.email,
            ),
            SizedBox(height: 12.h),
            const CustomTextFormField(
              hintText: AppStrings.password,
            ),
            SizedBox(height: 12.h),
            const CustomTextFormField(
              hintText: AppStrings.confirmPassword,
            ),
            SizedBox(height: 50.h),
            CustomButton(
              buttontext: AppStrings.register,
              textStyle: AppTextStyle.textStyle15w600(),
              backgroundColor: AppColors.dark40,
            ),
            SizedBox(height: 120.h),
            const Expanded(child: AlreadyHaveAccount()),
          ],
        ),
      )),
    );
  }
}
