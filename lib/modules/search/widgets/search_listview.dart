import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../order/order.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map> searchList = [
      {
        "image": const AssetImage("assets/img/search1.png"),
        "title": "Suhani Restaurant",
        "subTitle": "Chinnese, North Indian",
        "priceB": "200 \$",
        "priceA": "100 \$",
        "rate": "4.5 ",
      },
      {
        "image": const AssetImage("assets/img/search2.png"),
        "title": "Pista House",
        "subTitle": "Chinnese, Fast Food",
        "priceB": "250 \$",
        "priceA": "125 \$",
        "rate": "3.5 ",
      },
      {
        "image": const AssetImage("assets/img/search1.png"),
        "title": "Suhani Restaurant",
        "subTitle": "Chinnese, North Indian",
        "priceB": "200 \$",
        "priceA": "100 \$",
        "rate": "4.5 ",
      },
    ];
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: searchList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: 15.h, left: 10.w, right: 10.w, top: 20.h),
          child: InkWell(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const Order(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade,
                  );
            },
            child: Stack(
              children: [
                Container(
                  height: 300.h,
                  width: 348.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13.31.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 20.r,
                        spreadRadius: 1.r,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 141.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: searchList[index]["image"],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      searchList[index]["title"],
                                      style: TextStyle(
                                          fontSize: 17.3.sp,
                                          color: const Color(0xff333333),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      searchList[index]["subTitle"],
                                      style: TextStyle(
                                        fontSize: 14.64.sp,
                                        color: const Color(0xff707070),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 24.h,
                                  width: 54.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff509807),
                                      borderRadius: BorderRadius.circular(20.r)),
                                  child: Padding(
                                    padding: EdgeInsets.all(3.h),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          searchList[index]["rate"],
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.star,
                                            color: Colors.white, size: 17.h)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      searchList[index]["priceB"],
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff333333),
                                          decoration: TextDecoration.lineThrough),
                                    ),
                                    SizedBox(width: 7.w),
                                    Text(
                                      searchList[index]["priceA"],
                                      style: TextStyle(
                                          fontSize: 18.63.sp,
                                          color: const Color(0xffF88922)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.local_fire_department,
                                        color: const Color(0xffE89528),
                                        size: 20.h),
                                    Text(
                                      "145 cal",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff9E9E9E)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              "Left over food and supplies are gathered and sold for\n50% off!",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xffA7A7A7)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 20.h,
                  child: Image.asset("assets/img/rescued.png"),
                ),
                Positioned(
                  top: 60.h,
                  child: Image.asset("assets/img/offer50.png",
                      height: 40.h, width: 80.w),
                ),
                Positioned(
                  left: 10.w,
                  top: 115.h,
                  child: Container(
                    height: 13.h,
                    width: 43.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.clock, size: 10.h),
                        Text(
                          "30 min",
                          style: TextStyle(fontSize: 8.sp),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
