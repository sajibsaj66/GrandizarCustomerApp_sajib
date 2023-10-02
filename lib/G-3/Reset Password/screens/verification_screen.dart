import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/login_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/new_password.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/app_heading.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/custom_text_field.dart';

import '../../Location and Language/index.dart';
import '../../Location and Language/utils/static_data.dart';
import '../../Location and Language/widgets/text_style.dart';

class VerificationScreen extends StatelessWidget {
  final bool? isEmail;
  final bool? sendcodeForLogin;
  const VerificationScreen(
      {super.key, this.isEmail = false, this.sendcodeForLogin = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(Get.width * 0.05), children: [
        SizedBox(
          height: Get.height * 0.05,
        ),
        AppHeading(
            title: isEmail!
                ? AppStaticData.verificationEmail
                : AppStaticData.verification),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          textAlign: TextAlign.center,
          isEmail!
              ? AppStaticData.verificationCodeSentTo
              : AppStaticData.verificationCodeSent,
          style: subTitleStyle,
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
        CustomTextField(
          hintText: AppStaticData.verificationCode,
          title: "",
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        PrimaryBtn(
          title: sendcodeForLogin!
              ? AppStaticData.VerifyNow_SignIn
              : AppStaticData.verifyNow,
          onPressed: () {
            sendcodeForLogin!
                ? Get.to(() => LoginScreen())
                : Get.to(() => NewPasswordSetScreen());
          },
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
