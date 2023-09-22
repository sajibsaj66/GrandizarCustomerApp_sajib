import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GRANDIZAR',
      theme: ThemeData(
        fontFamily: GoogleFonts.sen().fontFamily,
      ),
      home: SignupScreen(),
    );
  }
}
