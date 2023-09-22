import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/colors.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/static_data.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/app_heading.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/custom_text_field.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/primary_button.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/text_style.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(Get.width * 0.05), children: [
        SizedBox(
          height: Get.height * 0.05,
        ),
        AppHeading(title: AppStaticData.verification),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          textAlign: TextAlign.center,
          AppStaticData.verificationCodeSent,
          style: subTitleStyle,
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
        CustomTextField(
          hintText: AppStaticData.verificationCode,
          prefixIcon: Icons.lock,
          title: "",
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        PrimaryBtn(
          title: AppStaticData.verifyNow,
          onPressed: () {},
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStaticData.minLeft, style: subTitleStyle),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Text(
              AppStaticData.resend,
              style: subTitleStyle.copyWith(color: AppColors.redColor),
            ),
          ],
        ),
      ]),
    );
  }
}
