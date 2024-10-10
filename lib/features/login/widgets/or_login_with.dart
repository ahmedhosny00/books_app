import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/core/utils/app_strings.dart';
import 'package:projct/core/utils/app_text_style.dart';

class OrLoginWith extends StatelessWidget {
  const OrLoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              color: AppColors.whiteEE,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              AppStrings.orLoginWith,
              style: AppTextStyle.textStyle15w500(),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              color: AppColors.whiteEE,
            ),
          ),
        ],
      ),
    );
  }
}
