import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/Marketplace/cart_page.dart';

import '../Location and Language/index.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
              title: 'Favorites',
              fontSize: 18.spMax,
              fontWeight: FontWeight.bold),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              child: CircleAvatar(
                backgroundColor: AppColors.awashColor,
                radius: 25.r,
                child: Image.asset(AppImages.cart),
              ),
            ),
            SizedBox(width: 10.w)
          ],
          bottom: TabBar(
            indicatorColor: AppColors.redColor,
            labelColor: AppColors.redColor,
            unselectedLabelColor: AppColors.disableColor,
            tabs: const [
              Tab(text: 'Items'),
              Tab(text: 'Restaurants'),
            ],
            labelStyle:
                TextStyle(fontSize: 14.spMax, fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontSize: 14.spMax),
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
                itemCount: 5,
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.8),
                itemBuilder: (context, index) {
                  return Container(
                    height: 170.h,
                    decoration: BoxDecoration(
                        color: AppColors.awashColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(favourites[index].itemImg),
                                  fit: BoxFit.fill)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 64.w,
                                    height: 28.h,
                                    decoration: const BoxDecoration(
                                        color: AppColors.redColor,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    child: Column(
                                      children: [
                                        CustomText(
                                            title: 'Pickup in',
                                            fontSize: 6.sp,
                                            padding: 2,
                                            txtColor: AppColors.whiteColor),
                                        CustomText(
                                            title: '15 Mins',
                                            fontSize: 10.sp,
                                            padding: 0,
                                            txtColor: AppColors.whiteColor),
                                      ],
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 12.r,
                                    backgroundColor: AppColors.whiteColor,
                                    child: Icon(Icons.favorite,
                                        size: 15.sp, color: AppColors.redColor),
                                  )
                                ],
                              ),
                              Container(
                                  width: 85.w,
                                  height: 30.h,
                                  decoration: const BoxDecoration(
                                      color: AppColors.redColor,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30))),
                                  child: CustomText(
                                      title: 'Promo Code',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      txtColor: AppColors.whiteColor)),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: AppColors.redColor, size: 18.sp),
                                Icon(Icons.star,
                                    color: AppColors.redColor, size: 18.sp),
                                Icon(Icons.star,
                                    color: AppColors.redColor, size: 18.sp),
                                Icon(Icons.star,
                                    color: AppColors.redColor, size: 18.sp),
                                Icon(Icons.star_border,
                                    color: AppColors.redColor, size: 18.sp),
                              ],
                            ),
                            CustomText(
                                title: favourites[index].itemName,
                                fontSize: 14.sp,
                                padding: 4,
                                fontWeight: FontWeight.bold),
                            CustomText(
                                title: favourites[index].restaurantName,
                                fontSize: 13.sp,
                                padding: 4,
                                txtColor: AppColors.disableColor),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                    title: '\$${favourites[index].price}',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                                CircleAvatar(
                                  backgroundColor: AppColors.redColor,
                                  radius: 15.r,
                                  child: const Icon(Icons.add,
                                      color: AppColors.whiteColor),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
            ListView.builder(
                itemCount: favourites.length,
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 370.w,
                        height: 170.h,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage(favourites[index].restaurantImg),
                                fit: BoxFit.fill)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 85.w,
                                  height: 31.h,
                                  decoration: const BoxDecoration(
                                      color: AppColors.redColor,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30))),
                                  child: Column(
                                    children: [
                                      CustomText(
                                          title: 'Pickup in',
                                          fontSize: 8.sp,
                                          padding: 2,
                                          txtColor: AppColors.whiteColor),
                                      CustomText(
                                          title: '15 Mins',
                                          fontSize: 12.sp,
                                          padding: 0,
                                          fontWeight: FontWeight.bold,
                                          txtColor: AppColors.whiteColor),
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 14.r,
                                  backgroundColor: AppColors.whiteColor,
                                  child: Icon(Icons.favorite,
                                      size: 17.sp, color: AppColors.redColor),
                                )
                              ],
                            ),
                            Container(
                                width: 132.w,
                                height: 32.h,
                                decoration: const BoxDecoration(
                                    color: AppColors.redColor,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30))),
                                child: CustomText(
                                    title: 'Promo Code',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    txtColor: AppColors.whiteColor)),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              title: favourites[index].restaurantName,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: AppColors.redColor, size: 18.sp),
                              Icon(Icons.star,
                                  color: AppColors.redColor, size: 18.sp),
                              Icon(Icons.star,
                                  color: AppColors.redColor, size: 18.sp),
                              Icon(Icons.star,
                                  color: AppColors.redColor, size: 18.sp),
                              Icon(Icons.star_border,
                                  color: AppColors.redColor, size: 18.sp),
                            ],
                          ),
                        ],
                      ),
                      CustomText(
                          title: 'Burger, Chicken',
                          fontSize: 14.sp,
                          txtColor: AppColors.disableColor)
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
