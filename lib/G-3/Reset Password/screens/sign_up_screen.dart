import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/login_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/verification_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/app_heading.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/custom_text_field.dart';

import '../../Location and Language/index.dart';
import '../../Location and Language/utils/static_data.dart';
import '../../Location and Language/widgets/custom_text_middle.dart';
import '../../Location and Language/widgets/text_style.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isCheck = false;
  void changeStatus() {
    isCheck = !isCheck;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const AppHeading(title: AppStaticData.reg),
          SizedBox(height: 30.h),
          const CustomTextField(
              hintText: AppStaticData.firstName,
              prefixIcon: Icons.person,
              title: AppStaticData.firstNameUpper),
          SizedBox(height: 10.h),
          const CustomTextField(
              hintText: AppStaticData.lastName,
              prefixIcon: Icons.person,
              title: AppStaticData.lastNameUpper),
          SizedBox(height: 10.h),
          const CustomTextField(
              hintText: AppStaticData.emailAddress,
              prefixIcon: Icons.email,
              title: AppStaticData.email),
          SizedBox(height: 10.h),
          const CustomTextField(
              isCountryPicker: true,
              hintText: AppStaticData.phoneNumber,
              prefixIcon: Icons.lock,
              title: AppStaticData.phoneNo),
          SizedBox(height: 10.h),
          CustomButton(
              title: AppStaticData.signUp,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const VerificationScreen(sendcodeForLogin: true)));
              }),
          SizedBox(height: 10.h),
          CheckboxListTile(
            value: isCheck,
            onChanged: (value) {
              setState(() {
                changeStatus();
              });
            },
            title: Text(
              AppStaticData.privacyPolicy,
              style: titleStyle.copyWith(
                fontSize: 15,
              ),
            ),
            activeColor: AppColors.fadeBlue,
            checkColor: AppColors.primaryBlackColor,
            fillColor:
                MaterialStateColor.resolveWith((states) => AppColors.fadeBlue),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          ),
          SizedBox(height: 10.h),
          const TextInTheMiddle(text: AppStaticData.loginWith),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.google)),
              SizedBox(width: 10.w),
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.apple)),
              SizedBox(width: 10.w),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.facebook)),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStaticData.alreadyAccount,
                style: titleStyle.copyWith(
                  fontSize: 15.sp,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                child: Text(
                  AppStaticData.logIn,
                  style: titleStyle.copyWith(
                    fontSize: 15.sp,
                    color: AppColors.redColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


