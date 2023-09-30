import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../index.dart';



class HubsPage extends StatefulWidget {
  const HubsPage({super.key});

  @override
  State<HubsPage> createState() => _HubsPageState();
}

class _HubsPageState extends State<HubsPage> {
  int selectedIndex = -1;
  bool mapView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90.h,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: CircleAvatar(
            backgroundColor: AppColors.awashColor.withOpacity(0.9),
            radius: 22.r,
            child: const Icon(Icons.arrow_back_ios_new, color: AppColors.redColor),
          ),
        ),
        title: CustomText(title: 'List of Hubs', fontSize: 22.spMax),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      title: 'List View',
                      onPressed: () {
                        setState(() {
                          mapView = false;
                        });
                      },
                      width: 156,
                      buttonColor: mapView
                          ? AppColors.awashColor.withOpacity(0.6)
                          : AppColors.redColor),
                  CustomButton(
                      width: 156,
                      title: 'Map View',
                      onPressed: () {
                        setState(() {
                          mapView = true;
                        });
                      },
                      buttonColor: mapView
                          ? AppColors.redColor
                          : AppColors.awashColor.withOpacity(0.6)),
                ],
              ),
              SizedBox(height: 20.h),
              mapView
                  ? selectedIndex == -1
                      ? const CustomText(
                          title: "No Location is Selected", fontSize: 22)
                      : SizedBox(
                          width: 343.w,
                          height: 492.h,
                          child: GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target: LatLng(locations[selectedIndex].latitude,
                                  locations[selectedIndex].longitude),
                              zoom: 14.0,
                            ),
                            markers: <Marker>{
                              Marker(
                                markerId: const MarkerId('your_location'),
                                position: LatLng(
                                    locations[selectedIndex].latitude,
                                    locations[selectedIndex]
                                        .longitude), // Set marker coordinates
                                infoWindow: const InfoWindow(title: 'Your Location'),
                              ),
                            },
                            onMapCreated: (GoogleMapController controller) {
                              controller.animateCamera(CameraUpdate.newLatLng(
                                  LatLng(locations[selectedIndex].latitude,
                                      locations[selectedIndex].longitude)));
                            },
                          ),
                        )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: locations.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 327.w,
                            height: 56.h,
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: AppColors.awashColor,
                                border: Border.all(
                                    width: 2,
                                    color: selectedIndex == index
                                        ? AppColors.redColor
                                        : Colors.transparent),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  width: 24.w,
                                  height: 18.h,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(AppImages.saudiFlag),
                                          fit: BoxFit.fill)),
                                ),
                                CustomText(
                                    title: locations[index].locationName,
                                    fontSize: 14.spMax),
                              ],
                            ),
                          ),
                        );
                      }),
              SizedBox(height: 30.h),
              CustomButton(
                title: AppStaticData.select,
                onPressed: selectedIndex == -1
                    ? () {}
                    : () {
                        print(locations[selectedIndex].locationName);
                      },
                buttonColor: selectedIndex == -1
                    ? AppColors.awashColor.withOpacity(0.5)
                    : AppColors.redColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
