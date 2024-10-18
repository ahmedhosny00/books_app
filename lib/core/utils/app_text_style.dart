import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

abstract class AppTextStyle {
  static TextStyle textStyle15w600() {
    return TextStyle(
      color: AppColors.white,
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle15w500() {
    return TextStyle(
      color: AppColors.green,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textStyle15w700() {
    return TextStyle(
      color: AppColors.green,
      fontSize: 15.sp,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textStyle15RedOrangew500() {
    return TextStyle(
      color: AppColors.green,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textStyle14w500() {
    return TextStyle(
      color: AppColors.green,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textStyle14w400() {
    return TextStyle(
      color: AppColors.green,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textStyle24w700() {
    return TextStyle(
      color: AppColors.green,
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textStyle15Darkw500() {
    return TextStyle(
      color: AppColors.green,
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
    );
  }
}
