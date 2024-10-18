import 'package:flutter/material.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/features/register/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.liteGreen, body: RegisterViewBody());
  }
}
