import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/colors.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/text_style.dart';

class PrimaryBtn extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const PrimaryBtn({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.redColor,
        minimumSize: Size(Get.width, Get.height * 0.06),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(title, style: buttonTitle),
    );
  }
}
