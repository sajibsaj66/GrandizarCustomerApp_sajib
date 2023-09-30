import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../index.dart';


class CustomBoxField extends StatelessWidget {
  CustomBoxField(
      {super.key,
        required this.hintText,
        this.borderRadius = 15,
        this.suffixIcon,
        this.width = 360,
        this.controller,
        this.textInputType = TextInputType.text});

  final double borderRadius;
  final String hintText;
  final Icon? suffixIcon;
  final double width;
  TextEditingController? controller;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
          child: TextField(
            controller: controller,
            keyboardType: textInputType,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                hintStyle: TextStyle(fontSize: 14.sp),
                border: InputBorder.none,
                hintText: hintText,
                suffixIcon: suffixIcon),
          ),
        ),
      ),
    );
  }
}
