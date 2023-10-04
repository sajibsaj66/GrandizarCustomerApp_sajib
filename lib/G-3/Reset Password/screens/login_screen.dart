import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/reset_pass.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/sign_up_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/verification_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/app_heading.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/custom_text_field.dart';

import '../../Location and Language/index.dart';
import '../../Location and Language/widgets/custom_text_middle.dart';
import '../../Location and Language/widgets/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = true;
  bool obscureText = true;
  void changePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    obscureText = !obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: const EdgeInsets.all(16), children: [
      const AppHeading(title: AppStaticData.logIn),
      SizedBox(height: 10.h),
      const CustomTextField(
        hintText: AppStaticData.emailAddress,
        prefixIcon: Icons.email,
        title: AppStaticData.email,
      ),
      SizedBox(height: 10.h),
      CustomTextField(
        hintText: AppStaticData.password,
        prefixIcon: Icons.lock,
        title: AppStaticData.password,
        obscureText: obscureText,
        suffixWidget: InkWell(
          onTap: () {
            setState(() {
              changePasswordVisibility();
            });
          },
          child: Icon(
            isPasswordVisible ? Icons.visibility_off : Icons.visibility,
            color: AppColors.secondaryBlackColor,
          ),
        ),
      ),
      SizedBox(height: 10.h),
      InkWell(
        onTap: () {
          //create bottom sheet for forgot password chosse phone or email
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 260.h,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(AppStaticData.resetPassword, style: titleStyle),
                    SizedBox(height: 10.h),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.fadeBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ResetPwdWithEmailPhone(isEmail: true)));
                        },
                        leading: const Icon(
                          Icons.email,
                        ),
                        title: const Text(
                          AppStaticData.email,
                          style: subTitleStyle,
                        ),
                        subtitle: const Text(AppStaticData.resetviaemailverification,
                            style: subTitleStyle),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.fadeBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ResetPwdWithEmailPhone()));
                        },
                        leading: const Icon(
                          Icons.phone,
                        ),
                        title: const Text(
                          AppStaticData.phoneNo,
                          style: subTitleStyle,
                        ),
                        subtitle: const Text(AppStaticData.resetviaphoneverification,
                            style: subTitleStyle),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Text(
          textAlign: TextAlign.end,
          AppStaticData.forgotPassword,
          style: subTitleStyle.copyWith(color: AppColors.redColor),
        ),
      ),
      SizedBox(height: 20.h),
      CustomButton(
          title: AppStaticData.logIn,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LocationAccessPage()));
          }),
      SizedBox(height: 20.h),
      const TextInTheMiddle(text: AppStaticData.loginwithmobilenumber),
      SizedBox(height: 10.h),
      const CustomTextField(
        isCountryPicker: true,
        hintText: AppStaticData.phoneNumber,
        prefixIcon: Icons.lock,
        title: "",
      ),
      SizedBox(height: 20.h),
      CustomButton(
          title: AppStaticData.sendCodeForLogIn,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const VerificationScreen(sendcodeForLogin: true)));
          }),
      SizedBox(height: 20.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStaticData.newSignUp,
            style: titleStyle.copyWith(
              fontSize: 15.sp,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()));
            },
            child: Text(
              AppStaticData.signUp,
              style: titleStyle.copyWith(
                fontSize: 15.sp,
                color: AppColors.redColor,
              ),
            ),
          ),
        ],
      ),
    ]));
  }
}
