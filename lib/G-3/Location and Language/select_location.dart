import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/model/static_models.dart';
import 'package:grandizar_customer_app_sajib/G-3/utils/app_imges.dart';
import 'package:grandizar_customer_app_sajib/G-3/utils/colors.dart';
import 'package:grandizar_customer_app_sajib/G-3/widgets/containers.dart';
import 'package:grandizar_customer_app_sajib/G-3/widgets/text_fields.dart';
import 'package:grandizar_customer_app_sajib/G-3/widgets/texts.dart';

import '../widgets/buttons.dart';

class SelectLocationPage extends StatelessWidget {
  const SelectLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(AppImages.grandizarLogo),

                SizedBox(height: 30.h),

                ListView.builder(
                  shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: locations.length,
                    itemBuilder: (context, index) {
                  return LocationContainer(locationName: locations[index].locationName);
                }),

                Row(
                  children: [
                    Container(height: 1, width: 156.w, color: AppColors.disableColor),
                    const CustomText(title: 'Or', fontSize: 13),
                    Container(height: 1, width: 156.w, color: AppColors.disableColor),
                  ],
                ),
                
                CustomBoxField(hintText: 'Search by city or city center name'),

                CustomButton(
                  title: 'Select',
                  onPressed: () {},
                  buttonColor: AppColors.redColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
