import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/core/utils/app_strings.dart';
import 'package:projct/core/widgets/custom_botton.dart';
import 'package:projct/features/register/manager/cubit/register_cubit.dart';
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: BlocConsumer<RegisterCubit, RegisterState>(
              listener: (BuildContext context, Object? state) {},
              builder: (BuildContext context, state) {
                return Form(
                  key: BlocProvider.of<RegisterCubit>(context).registerKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomBackBotton(),
                      SizedBox(height: 20.h),
                      Text(AppStrings.helloRegister,
                          style: AppTextStyle.textStyle24w700()),
                      SizedBox(height: 30.h),
                      //! Username
                      CustomTextFormField(
                        hintText: AppStrings.username,
                        controller: BlocProvider.of<RegisterCubit>(context)
                            .usernameController,
                      ),
                      SizedBox(height: 12.h),
                      //! Email
                      CustomTextFormField(
                        validate: (value) {
                          if (value!.isEmpty || !value.contains("@gmail.com")) {
                            return AppStrings.emailCannotBeEmpty;
                          } else if (!value.contains('@')) {
                            return AppStrings.enterValidEmail;
                          }
                          return null;
                        },
                        hintText: AppStrings.email,
                        controller: BlocProvider.of<RegisterCubit>(context)
                            .emailController,
                      ),
                      SizedBox(height: 12.h),
                      //! Password
                      CustomTextFormField(
                         validate: (value) {
                          if (value!.isEmpty) {
                            return AppStrings.passwordCannotBeEmpty;
                          } else if (value.length < 6) {
                            return AppStrings.passwordMustBeAtLeast6Characters;
                          }
                          return null;
                        },
                        hintText: AppStrings.password,
                        controller: BlocProvider.of<RegisterCubit>(context)
                            .passwordController,
                      ),
                      SizedBox(height: 12.h),
                      //! Confirm Password
                      CustomTextFormField(
                        hintText: AppStrings.confirmPassword,
                        controller: BlocProvider.of<RegisterCubit>(context)
                            .confirmPasswordController,
                      ),
                      SizedBox(height: 50.h),
                      //! Register botton
                      CustomButton(
                        buttontext: AppStrings.register,
                        textStyle: AppTextStyle.textStyle15w600(),
                        backgroundColor: AppColors.dark40,
                      ),
                      SizedBox(height: 180.h),
                      const AlreadyHaveAccount(),
                    ],
                  ),
                );
              }),
        )),
      ),
    );
  }
}
