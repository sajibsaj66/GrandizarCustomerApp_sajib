import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/app_imges.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/text_style.dart';

class AppHeading extends StatelessWidget {
  final String title;
  const AppHeading({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppImages.grandizarLogo),
        SizedBox(
          height: Get.height * 0.05,
        ),
        Text(title,
            style: titleStyle.copyWith(
              fontSize: 25,
            )),
      ],
    );
  }
}
