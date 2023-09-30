import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/hubs_page.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/location_access_page.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/permission_type_page.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/select_location.dart';

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
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: LocationAccessPage());
        });
  }
}
