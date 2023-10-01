import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/location_access_page.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/login_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/new_password.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/password_changed.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/reset_pass.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/sign_up_screen.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GRANDIZAR',
          theme: ThemeData(
            fontFamily: GoogleFonts.sen().fontFamily,
          ),
          home: SignupScreen(),
        );
      },
    );
  }
}
