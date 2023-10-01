import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/login_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/app_imges.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/primary_button.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/text_style.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.successfulLogo),
            SizedBox(height: 30),
            Text('password changed successfully', style: subTitleStyle),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: PrimaryBtn(title: 'Login  Now', onPressed: (){
                Get.to(LoginScreen());
              }),
            )
          ],
        ),
      ),
    );
  }
}
