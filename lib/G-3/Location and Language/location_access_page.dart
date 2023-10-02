import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'index.dart';
import 'package:location/location.dart';

class LocationAccessPage extends StatelessWidget {
  LocationAccessPage({super.key});

  Future requestPermission() async {
    Location location = Location();
    bool locationService;
    PermissionStatus permissionStatus;
    LocationData locationData;

    locationService = await location.serviceEnabled();
    if (!locationService) {
      locationService = await location.requestService();
      if (!locationService) {
        return;
      }
    }

    permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      if (permissionStatus != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();
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
                  await requestPermission();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HubsPage()));
                }),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SelectLocationPage()));
              },
              child: CustomText(
                  title: 'Enter location manually',
                  fontSize: 16.sp,
                  textDecoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
