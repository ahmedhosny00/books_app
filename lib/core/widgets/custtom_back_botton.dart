import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackBotton extends StatelessWidget {
  const CustomBackBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 41.w,
        height: 41.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Icon(
          Icons.arrow_back_ios_rounded,
          size: 20.sp,
        )),
      ),
    );
  }
}
