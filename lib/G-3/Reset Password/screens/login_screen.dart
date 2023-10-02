import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/location_access_page.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/controller/login_controller.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/reset_pass.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/sign_up_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/verification_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/colors.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/static_data.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/app_heading.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/custom_text_field.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/text_style.dart';

import '../../Location and Language/utils/primary_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.all(Get.width * 0.05), children: [
      SizedBox(
        height: Get.height * 0.05,
      ),
      AppHeading(title: AppStaticData.logIn),
      SizedBox(
        height: Get.height * 0.05,
      ),
      CustomTextField(
        hintText: AppStaticData.emailAddress,
        prefixIcon: Icons.email,
        title: AppStaticData.email,
      ),
      SizedBox(
        height: Get.height * 0.02,
      ),
      Obx(
        () => CustomTextField(
          hintText: AppStaticData.password,
          prefixIcon: Icons.lock,
          title: AppStaticData.password,
          obscureText: loginController.obscureText.value,
          suffixWidget: InkWell(
            onTap: () {
              loginController.changePasswordVisibility();
            },
            child: Icon(
              loginController.isPasswordVisible.value
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: AppColors.secondaryBlackColor,
            ),
          ),
        ),
      ),
      SizedBox(
        height: Get.height * 0.02,
      ),
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
                height: Get.height * 0.35,
                padding: EdgeInsets.all(Get.width * 0.05),
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
                    Text(AppStaticData.resetPassword, style: titleStyle),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.fadeBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        onTap: () {
                          Get.to(() => const ResetPwdWithEmailPhone(
                                isEmail: true,
                              ));
                        },
                        leading: const Icon(
                          Icons.email,
                        ),
                        title: Text(
                          AppStaticData.email,
                          style: subTitleStyle,
                        ),
                        subtitle: Text(AppStaticData.Resetviaemailverification,
                            style: subTitleStyle),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.fadeBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        onTap: () {
                          Get.to(() => const ResetPwdWithEmailPhone());
                        },
                        leading: const Icon(
                          Icons.phone,
                        ),
                        title: Text(
                          AppStaticData.phoneNo,
                          style: subTitleStyle,
                        ),
                        subtitle: Text(AppStaticData.Resetviaphoneverification,
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
      SizedBox(
        height: Get.height * 0.02,
      ),
      PrimaryBtn(
        title: AppStaticData.logIn,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LocationAccessPage()));
        },
      ),
      SizedBox(
        height: Get.height * 0.02,
      ),
      TextInTheMiddle(text: AppStaticData.loginwithmobilenumber),
      SizedBox(
        height: Get.height * 0.02,
      ),
      CustomTextField(
        isCountryPicker: true,
        hintText: AppStaticData.phoneNumber,
        prefixIcon: Icons.lock,
        title: "",
      ),
      SizedBox(
        height: Get.height * 0.02,
      ),
      PrimaryBtn(
        title: AppStaticData.SendCodeforLogIn,
        onPressed: () {
          Get.to(() => const VerificationScreen(
                sendcodeForLogin: true,
              ));
        },
      ),
      SizedBox(
        height: Get.height * 0.02,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStaticData.newSignUp,
            style: titleStyle.copyWith(
              fontSize: 15,
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(() => SignupScreen());
            },
            child: Text(
              AppStaticData.signUpNow,
              style: titleStyle.copyWith(
                fontSize: 15,
                color: AppColors.redColor,
              ),
            ),
          ),
        ],
      ),
    ]));
  }
}
