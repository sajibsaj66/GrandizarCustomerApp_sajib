import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandizar_customer_app_sajib/G-3/Marketplace/rating_page.dart';

import 'G-3/Marketplace/order_page.dart';

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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GRANDIZAR',
          theme: ThemeData(
            fontFamily: GoogleFonts.sen().fontFamily,
          ),
          home: OrderPage(),
        );
      },
    );
  }
}
