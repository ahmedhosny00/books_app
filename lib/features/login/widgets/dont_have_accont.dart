import 'package:flutter/material.dart';
import 'package:projct/core/utils/app_strings.dart';
import 'package:projct/core/utils/app_text_style.dart';
import 'package:projct/features/register/view/register_view.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAccount,
          style: AppTextStyle.textStyle15Darkw500(),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  RegisterView()));
          },
          child: Text(
            AppStrings.registerNow,
            style: AppTextStyle.textStyle15w700(),
          ),
        ),
      ],
    );
  }
}
