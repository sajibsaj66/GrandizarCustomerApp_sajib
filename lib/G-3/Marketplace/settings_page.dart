import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/Marketplace/language_page.dart';
import 'package:grandizar_customer_app_sajib/G-3/Marketplace/password_modification_page.dart';

import '../Location and Language/index.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String initLan = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 90.h,
          backgroundColor: AppColors.whiteColor,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: CircleAvatar(
              backgroundColor: AppColors.awashColor,
              radius: 25.r,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new,
                      color: AppColors.redColor)),
            ),
          ),
          title: CustomText(
              title: 'Settings',
              fontSize: 18.spMax,
              fontWeight: FontWeight.bold)),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PasswordModificationPage()));
              },
              child: Container(
                width: 340.w,
                height: 105.h,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColors.awashColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 24.r,
                      backgroundColor: AppColors.whiteColor,
                      child: Image.asset(AppImages.lock, scale: 3),
                    ),
                    CustomText(title: 'Change Password', fontSize: 16.sp),
                    Image.asset(AppImages.edit, scale: 0.9)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                final result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LanguagePage()));
                setState(() {
                  initLan = result;
                });
              },
              child: Container(
                width: 340.w,
                height: 110.h,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColors.awashColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 24.r,
                      backgroundColor: AppColors.whiteColor,
                      child: Image.asset(AppImages.language, scale: 3),
                    ),
                    Column(
                      children: [
                        CustomText(
                            title: 'Language', fontSize: 16.sp, padding: 4),
                        CustomText(
                            title: initLan,
                            fontSize: 14.sp,
                            txtColor: AppColors.disableColor),
                      ],
                    ),
                    Image.asset(AppImages.edit, scale: 0.9)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
