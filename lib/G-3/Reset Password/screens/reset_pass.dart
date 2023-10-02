import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/verification_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/app_heading.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/custom_text_field.dart';

import '../../Location and Language/index.dart';

class ResetPwdWithEmailPhone extends StatelessWidget {
  final bool? isEmail;
  const ResetPwdWithEmailPhone({super.key, this.isEmail = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(16), children: [
        AppHeading(title: AppStaticData.resetPassword),
        SizedBox(height: 20.h),
        Column(
          children: [
            CustomTextField(
              isCountryPicker: isEmail! ? false : true,
              hintText: isEmail!
                  ? AppStaticData.emailAddress
                  : AppStaticData.phoneNumber,
              prefixIcon: Icons.email,
              title: "",
            ),
            SizedBox(height: 30.h),
            CustomButton(
                title: AppStaticData.sendCode,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationScreen(
                              isEmail: isEmail! ? true : false)));
                }),
          ],
        )
      ]),
    );
  }
}
