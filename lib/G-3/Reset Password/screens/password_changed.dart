import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/login_screen.dart';

import '../../Location and Language/index.dart';
import '../../Location and Language/widgets/text_style.dart';

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
            SizedBox(height: 30.h),
            const Text('password changed successfully', style: subTitleStyle),
            SizedBox(height: 100.h),
            CustomButton(
                title: 'Login Now',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                })
          ],
        ),
      ),
    );
  }
}
