import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../index.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
        this.width = 330, this.height = 56,
      this.buttonColor = AppColors.redColor});

  final String title;
  final Color buttonColor;
  final VoidCallback onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: CustomText(
              title: title,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              txtColor: buttonColor == AppColors.redColor
                  ? AppColors.whiteColor
                  : AppColors.redColor)),
    );
  }
}





class CustomButtonMedium extends StatelessWidget {
  const CustomButtonMedium(
      {super.key,
        required this.title,
        required this.onPressed,
        this.width = 150, this.height = 50,
        this.buttonColor = AppColors.redColor});

  final String title;
  final Color buttonColor;
  final VoidCallback onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: buttonColor,
              side: const BorderSide(width: 1, color: AppColors.redColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: CustomText(
              title: title,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              txtColor: buttonColor == AppColors.redColor
                  ? AppColors.whiteColor
                  : AppColors.redColor)),
    );
  }
}