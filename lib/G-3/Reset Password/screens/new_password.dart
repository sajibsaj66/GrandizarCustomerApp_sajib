import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/password_changed.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/app_heading.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/custom_text_field.dart';

import '../../Location and Language/index.dart';
import '../../Location and Language/widgets/text_style.dart';

class NewPasswordSetScreen extends StatefulWidget {
  NewPasswordSetScreen({super.key});

  @override
  State<NewPasswordSetScreen> createState() => _NewPasswordSetScreenState();
}

class _NewPasswordSetScreenState extends State<NewPasswordSetScreen> {
  bool isPasswordVisible = true;
  bool obscureText = true;
  void changePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    obscureText = !obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(16), children: [
        AppHeading(title: AppStaticData.newPassword),
        SizedBox(height: 20.h),
        Text(
          textAlign: TextAlign.center,
          AppStaticData.differentFrom,
          style: subTitleStyle,
        ),
        SizedBox(height: 20.h),
        CustomTextField(
          hintText: AppStaticData.password,
          prefixIcon: Icons.lock,
          title: "",
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
        SizedBox(height: 30.h),
        CustomButton(
            title: AppStaticData.resetPassword,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasswordChanged()));
            }),
      ]),
    );
  }
}
