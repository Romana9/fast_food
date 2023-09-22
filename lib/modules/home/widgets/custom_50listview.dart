import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custom50Listview extends StatelessWidget {
  const Custom50Listview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map> offer50 = [
      {
        "image": const AssetImage("assets/img/save1.png"),
        "title": "Wow! Momo",
        "subTitle": "Fast food, Chinese",
        "priceB": "250 \$",
        "priceA": "200 \$",
        "bool": true,
      },
      {
        "image": const AssetImage("assets/img/save2.png"),
        "title": "Arabian, Lebanese",
        "subTitle": "Arabian, Lebanese",
        "priceB": "250 \$",
        "priceA": "200 \$",
        "bool": false,
      },
      {
        "image": const AssetImage("assets/img/save3.png"),
        "title": "Strawberry Icecream",
        "subTitle": "Cream Stone",
        "priceB": "100 \$",
        "priceA": "50 \$",
        "bool": true,
      },
    ];
    return SizedBox(
      height: 275.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: offer50.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.only(right: 10.w, top: 5.h, left: 5.w, bottom: 5.h),
            child: Stack(
              children: [
                Container(
                  height: 274.09.h,
                  width: 191.41.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 5.r,
                          spreadRadius: 1.r,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 133.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: offer50[index]["image"],
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
                              offer50[index]["title"],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17.3.sp,
                                  color: const Color(0xff333333),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              offer50[index]["subTitle"],
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
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      offer50[index]["priceB"],
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    SizedBox(width: 7.w),
                                    Text(
                                      offer50[index]["priceA"],
                                      style: TextStyle(
                                          fontSize: 18.63.sp,
                                          color: const Color(0xffF88922)),
                                    ),
                                  ],
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
                Positioned(
                  top: 5.h,
                  left: 0,
                  child: Image.asset("assets/img/offer50.png",
                      height: 40.h, width: 80.w),
                ),
                offer50[index]["bool"]
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
