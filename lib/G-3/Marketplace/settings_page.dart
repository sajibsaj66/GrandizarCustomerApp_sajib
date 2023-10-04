import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Location and Language/index.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
              title: 'Settings', fontSize: 18.spMax, fontWeight: FontWeight.bold)),
      body: Column(
        children: [
          Container(
            width: 327,
            height: 101,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.awashColor,
              borderRadius: BorderRadius.circular(16)
            ),
            child: const Row(
              children: [
                CircleAvatar(

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
