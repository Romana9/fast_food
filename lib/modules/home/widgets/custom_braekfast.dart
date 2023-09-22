import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBreakfast extends StatelessWidget {
  const CustomBreakfast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 370.h,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 15.w),
            child: Container(
              padding: EdgeInsets.all(20.h),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      26, 248, 137, 34),
                  borderRadius:
                      BorderRadius.circular(30.r)),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Looking for ",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: const Color(
                                    0xffF88922)),
                          ),
                          Text(
                            "Breakfast?",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: const Color(
                                    0xffF88922),
                                fontWeight:
                                    FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.h),
                      Text(
                        "Here’s what you might like to\ntaste",
                        style: TextStyle(
                            fontSize: 14.64.sp,
                            color:
                                const Color(0xffA6978A)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 100.h,
          child: Row(
            children: [
              Container(
                height: 254.3.h,
                width: 190.27.w,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(20.r)),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 133.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/img/braekfast1.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h),
                          Text(
                            "Cappuccino",
                            style: TextStyle(
                                fontSize: 17.3.sp,
                                color: const Color(
                                    0xff333333),
                                fontWeight:
                                    FontWeight.w600),
                          ),
                          Text(
                            "Suhani Restaurant",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(
                                    0xff7C7C7C),
                                fontWeight:
                                    FontWeight.w600),
                          ),
                          SizedBox(height: 30.h),
                          Row(
                            crossAxisAlignment:
                                CrossAxisAlignment.end,
                            children: [
                              Text(
                                "250 \$",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight:
                                        FontWeight.w600,
                                    decoration:
                                        TextDecoration
                                            .lineThrough),
                              ),
                              SizedBox(width: 7.w),
                              Text(
                                "200 \$",
                                style: TextStyle(
                                    fontSize: 18.63.sp,
                                    color: const Color(
                                        0xffF88922)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Stack(
                children: [
                  Container(
                    height: 254.3.h,
                    width: 190.27.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(20.r)),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 133.h,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/img/braekfast2.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.h),
                              Text(
                                "Egg and cheese sandwich",
                                style: TextStyle(
                                    fontSize: 17.3.sp,
                                    color: const Color(
                                        0xff333333),
                                    fontWeight:
                                        FontWeight.w600),
                              ),
                              Text(
                                "Mehfil’s Place",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(
                                        0xff7C7C7C),
                                    fontWeight:
                                        FontWeight.w600),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "200 \$",
                                style: TextStyle(
                                    fontSize: 18.63.sp,
                                    color: const Color(
                                        0xffF88922)),
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
                    child: Image.asset(
                        "assets/img/offer.png",
                        height: 40.h,
                        width: 80.w),
                  ),
                  Positioned(
                    top: 120.h,
                    left: 10.w,
                    child: Container(
                      height: 22.62.h,
                      width: 102.45.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(
                                14.64.r),
                        border: Border.all(
                            color:
                                const Color(0xff707070)),
                      ),
                      child: Center(
                        child: Text(
                          "Free Delivery",
                          style: TextStyle(
                              fontSize: 10.64.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(
                                  0xff707070)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
