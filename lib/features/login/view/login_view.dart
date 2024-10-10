import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/core/utils/app_text_style.dart';
import 'package:projct/core/widgets/custom_botton.dart';
import 'package:projct/features/login/widgets/dont_have_accont.dart';
import 'package:projct/features/login/widgets/or_login_with.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/custtom_back_botton.dart';
import '../manager/cubit/login_cubit.dart';
import '../manager/cubit/login_state.dart';
import '../widgets/your_voice_print_botton.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D5CB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (BuildContext context, LoginState state) {},
              builder: (context, state) {
                return Form(
                  key: BlocProvider.of<LoginCubit>(context).loginKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomBackBotton(),
                      SizedBox(height: 20.h),
                      Text(AppStrings.welcome,
                          style: AppTextStyle.textStyle24w700()),
                      SizedBox(height: 30.h),
                      //! Email
                      CustomTextFormField(
                        controller: BlocProvider.of<LoginCubit>(context)
                            .emailController,
                        hintText: AppStrings.enterYourEmail,
                        validate: (value) {
                          if (value!.isEmpty || !value.contains("@gmail.com")) {
                            return AppStrings.emailCannotBeEmpty;
                          } else if (!value.contains('@')) {
                            return AppStrings.enterValidEmail;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10.h),
                      //! Password
                      CustomTextFormField(
                        controller: BlocProvider.of<LoginCubit>(context)
                            .passwordController,
                        hintText: AppStrings.enterYourPassword,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return AppStrings.passwordCannotBeEmpty;
                          } else if (value.length < 6) {
                            return AppStrings.passwordMustBeAtLeast6Characters;
                          }
                          return null;
                        },
                        isObscureText:
                            BlocProvider.of<LoginCubit>(context).isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            BlocProvider.of<LoginCubit>(context)
                                .togglePasswordVisibility;
                          },
                          child: Icon(BlocProvider.of<LoginCubit>(context)
                              .passwordIcon),
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
