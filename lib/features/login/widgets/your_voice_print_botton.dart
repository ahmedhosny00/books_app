import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projct/core/utils/app_text_style.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';

class YourVoicePrintBotton extends StatelessWidget {
  const YourVoicePrintBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 382,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.redOrange33,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svgs/Vector.svg',
                height: 24.w,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                AppStrings.yourVoicePrint,
                style: AppTextStyle.textStyle15w600(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
