import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/hubs_page.dart';

import 'package:grandizar_customer_app_sajib/G-3/utils/app_imges.dart';
import 'package:grandizar_customer_app_sajib/G-3/utils/colors.dart';
import 'package:grandizar_customer_app_sajib/G-3/widgets/buttons.dart';
import 'package:grandizar_customer_app_sajib/G-3/widgets/texts.dart';

class LocationAccessPage extends StatelessWidget {
  LocationAccessPage({super.key});

  Position? position;

  _getMyLocation() async {
    await Geolocator.requestPermission();

    Future<Position> _determinePosition() async {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      return await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.navigationLogo),
            CustomText(title: 'Enable Your Location', fontSize: 18.sp),
            CustomText(
                title:
                    'To search for the best nearby driver, we\nwant to know your current location',
                fontSize: 16.sp,
                txtColor: AppColors.disableColor),
            SizedBox(height: 100.h),
            CustomButton(
                title: 'Allow Location Access',
                onPressed: () async {
                  position = await _getMyLocation();
                  print(position?.latitude);
                  print(position?.longitude);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HubsPage()));
                }),
            SizedBox(height: 20.h),
            CustomText(
                title: 'Enter location manually',
                fontSize: 16.sp,
                textDecoration: TextDecoration.underline),
          ],
        ),
      ),
    );
  }
}
