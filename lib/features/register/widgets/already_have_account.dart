import 'package:flutter/material.dart';
import 'package:projct/core/utils/app_strings.dart';
import 'package:projct/core/utils/app_text_style.dart';
import 'package:projct/features/login/view/login_view.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.alreadyHaveAccont,
          style: AppTextStyle.textStyle15Darkw500(),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  LoginView()));
          },
          child: Text(
            AppStrings.loginNow,
            style: AppTextStyle.textStyle15w700(),
          ),
        ),
      ],
    );
  }
}
