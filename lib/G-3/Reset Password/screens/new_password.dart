import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/controller/login_controller.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/login_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/colors.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/static_data.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/app_heading.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/custom_text_field.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/primary_button.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/text_style.dart';

class NewPasswordSetScreen extends StatelessWidget {
  NewPasswordSetScreen({super.key});
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(Get.width * 0.05), children: [
        SizedBox(
          height: Get.height * 0.05,
        ),
        AppHeading(title: AppStaticData.newPassword),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          textAlign: TextAlign.center,
          AppStaticData.differentFrom,
          style: subTitleStyle,
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
        Obx(
          () => CustomTextField(
            hintText: AppStaticData.password,
            prefixIcon: Icons.lock,
            title: "",
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
        PrimaryBtn(
          title: AppStaticData.resetPassword,
          onPressed: () {
            Get.to(() => LoginScreen());
          },
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
      ]),
    );
  }
}
