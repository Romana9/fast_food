import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderAgainListView extends StatelessWidget {
  const OrderAgainListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map> orderAgain = [
      {
        "image": const AssetImage("assets/img/kfc.png"),
        "title": "KFC Combo",
      },
      {
        "image": const AssetImage("assets/img/king.png"),
        "title": "Burger King\nCombo",
      },
    ];
    return SizedBox(
      height: 145.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: orderAgain.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w, top: 5.h, left: 5.w, bottom: 5.h),
            child: Container(
              height: 138.2.h,
              width: 294.4.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 5.r,
                    spreadRadius: 1.r,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(15.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 53.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: orderAgain[index]["image"],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  orderAgain[index]["title"],
                                  style: TextStyle(
                                      fontSize: 17.3.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff333333)),
                                ),
                                Text(
                                  "Yesterday 3pm",
                                  style: TextStyle(
                                      fontSize: 13.31.sp,
                                      color: const Color(0xff999999)),
                                ),
                              ],
                            ),
                            SizedBox(width: 60.w),
                            Text(
                              "250 \$",
                              style: TextStyle(
                                  fontSize: 17.3.sp,
                                  color: const Color(0xff079D49)),
                            ),
                          ],
                        ),
                        Text(
                          "1 Kacchi biriyani · 1 chilli\nonion... +3 more",
                          style: TextStyle(
                              fontSize: 16.sp, color: const Color(0xff707070)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
