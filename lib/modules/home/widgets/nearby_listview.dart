import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNearbyListView extends StatelessWidget {
  const CustomNearbyListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> nearby = [
      {
        "image": const AssetImage("assets/img/nearby1.png"),
        "title": "KFC",
        "subTitle": "Desi, Italian, +3 more",
        "priceB": "250 \$",
        "priceA": "200 \$",
        "bool": true,
        "boolOffer": true,
        "offerPrice": true,
      },
      {
        "image": const AssetImage("assets/img/nearby2.png"),
        "title": "Burger King",
        "subTitle": "Burgers, Bevarages",
        "priceB": "250 \$",
        "priceA": "200 \$",
        "bool": false,
        "boolOffer": false,
        "offerPrice": false,
      },
      {
        "image": const AssetImage("assets/img/nearby3.png"),
        "title": "Paradise Restaurant",
        "subTitle": "Halal Food",
        "priceB": "100 \$",
        "priceA": "50 \$",
        "bool": true,
        "boolOffer": false,
        "offerPrice": false,
      },
    ];
    return SizedBox(
      height: 275.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: nearby.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Stack(
              children: [
                Container(
                  height: 274.09.h,
                  width: 196.92.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffC8C8C8)),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 133.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: nearby[index]["image"],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.h),
                            Text(
                              nearby[index]["title"],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17.3.sp,
                                  color: const Color(0xff333333),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              nearby[index]["subTitle"],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.64.sp,
                                color: const Color(0xff707070),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                nearby[index]["offerPrice"]
                                    ? Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            nearby[index]["priceB"],
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          ),
                                          SizedBox(width: 7.w),
                                          Text(
                                            nearby[index]["priceA"],
                                            style: TextStyle(
                                                fontSize: 18.63.sp,
                                                color: const Color(0xffF88922)),
                                          ),
                                        ],
                                      )
                                    : Text(
                                        "200 \$",
                                        style: TextStyle(
                                            fontSize: 18.63.sp,
                                            color: const Color(0xffF88922)),
                                      ),
                                Icon(CupertinoIcons.bookmark_solid,
                                    color: const Color(0xffC8C8C8), size: 25.h)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                nearby[index]["boolOffer"]
                    ? Positioned(
                        top: 5.h,
                        left: 0,
                        child: Image.asset("assets/img/offer.png",
                            height: 40.h, width: 80.w),
                      )
                    : const Text(""),
                nearby[index]["bool"]
                    ? Positioned(
                        top: 125.h,
                        right: 15.w,
                        child: Container(
                          height: 22.62.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: const Color(0xffFBEFE5),
                            borderRadius: BorderRadius.circular(14.64.r),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Center(
                            child: Text(
                              "Free Delivery",
                              style: TextStyle(
                                  fontSize: 11.31.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffF1A761)),
                            ),
                          ),
                        ),
                      )
                    : const Text("")
              ],
            ),
          );
        },
      ),
    );
  }
}
