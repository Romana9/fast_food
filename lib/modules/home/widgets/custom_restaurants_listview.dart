import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRestaurantsListView extends StatelessWidget {
  const CustomRestaurantsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> allRestaurants = [
      {
        "image": const AssetImage("assets/img/all1.png"),
        "title": "Pizza Hut",
        "subTitle":
            "Home cook · Fast food · Burger · Home\ncook · Fast food · Burger",
      },
      {
        "image": const AssetImage("assets/img/kfc.png"),
        "title": "KFC Banani",
        "subTitle": "Fast food · Burger",
      },
      {
        "image": const AssetImage("assets/img/king.png"),
        "title": "Burger King",
        "subTitle": "Rescued · Fast food · Burger",
      },
      {
        "image": const AssetImage("assets/img/all2.png"),
        "title": "Mehfil Coffees",
        "subTitle": "Home cook · Beverages",
      },
      {
        "image": const AssetImage("assets/img/all3.png"),
        "title": "Madchef Biryani",
        "subTitle": "Middle Eastern",
      },
      {
        "image": const AssetImage("assets/img/all4.png"),
        "title": "Lorem Kitchen",
        "subTitle":
            "Home cook · Fast food · Burger · Home\ncook · Fast food · Burger",
      },
      {
        "image": const AssetImage("assets/img/all5.png"),
        "title": "Madchef Biryani",
        "subTitle": "Rescued, Middle Eastern",
      },
    ];
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: allRestaurants.length,
      separatorBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Divider(thickness: 1.w),
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10.h, top: 5.h),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Container(
                  height: 67.h,
                  width: 67.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: allRestaurants[index]["image"],
                      )),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      allRestaurants[index]["title"],
                      style: TextStyle(
                          fontSize: 18.63.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff333333)),
                    ),
                    Text(
                      allRestaurants[index]["subTitle"],
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xff707070)),
                    ),
                    SizedBox(height: 9.h),
                    Row(
                      children: [
                        Container(
                          height: 26.61.h,
                          width: 101.12.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.31.r),
                              border:
                                  Border.all(color: const Color(0xff4FA987))),
                          child: Center(
                            child: Text(
                              "RESCUED",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff4FA987)),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Container(
                          height: 26.61.h,
                          width: 121.08.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.31.r),
                              border:
                                  Border.all(color: const Color(0xff707070))),
                          child: Center(
                            child: Text(
                              "Free Delivery",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
