import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: ListView(padding: EdgeInsets.all(16), children: [
        AppHeading(
            title: isEmail!
                ? AppStaticData.verificationEmail
                : AppStaticData.verification),
        SizedBox(height: 10.h),
        Text(
          textAlign: TextAlign.center,
          isEmail!
              ? AppStaticData.verificationCodeSentTo
              : AppStaticData.verificationCodeSent,
          style: subTitleStyle,
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          hintText: AppStaticData.verificationCode,
          title: "",
        ),
        SizedBox(height: 30.h),
        CustomButton(
            title: sendcodeForLogin!
                ? AppStaticData.VerifyNow_SignIn
                : AppStaticData.verifyNow,
            onPressed: () {
              sendcodeForLogin!
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()))
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewPasswordSetScreen()));
            }),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStaticData.minLeft, style: subTitleStyle),
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
