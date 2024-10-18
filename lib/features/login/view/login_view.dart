import 'package:flutter/material.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/features/login/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:AppColors.liteGreen,
      body: LoginViewBody(),
    );
  }
}
