import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projct/core/utils/app_colors.dart';
import 'package:projct/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget? suffixIcon;
  final String hintText;
  final bool? isObscureText;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;

  const CustomTextFormField(
      {super.key,
      this.suffixIcon,
      required this.hintText,
      this.isObscureText,
      this.hintStyle,
      this.inputTextStyle,
      this.enabledBorder,
      this.focusedBorder,
      this.contentPadding,
      this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.0.w),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
              
                color: AppColors.whiteEE,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.whiteEE,
                width: 1.3,
              ),
            ),
        hintStyle: hintStyle ?? AppTextStyle.textStyle14w400(),
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? AppColors.whiteEE,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      cursorColor: AppColors.darkGrey7C,
      style: inputTextStyle ?? AppTextStyle.textStyle15w600(), // Use inputTextStyle here
  );

  }
}
