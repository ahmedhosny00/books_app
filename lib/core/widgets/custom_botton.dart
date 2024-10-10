import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projct/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttontext;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonHeight;
  final double? buttonWidth;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  const CustomButton(
      {super.key,
      required this.buttontext,
      this.backgroundColor,
      this.borderRadius,
      this.verticalPadding,
      this.horizontalPadding,
      this.buttonHeight,
      this.buttonWidth,
      this.onPressed,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.all(backgroundColor ?? AppColors.redOrange33),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 40.0.w,
              vertical: verticalPadding ?? 10.0.h),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50.sp),
        ),
      ),
      child: Text(
        buttontext,
        style: textStyle,
      ),
    );
  }
}
