import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';
import 'text_style.dart';

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
