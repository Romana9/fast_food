import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: const Color(0xff5E5959)),
            ),
            SizedBox(height: 5.h),
            Text(
              "Our fried rice is made from the\nfinest ingredients and veggies.\nsingle dish is made with fresh\nvegetables, rescued.",
              style: TextStyle(
                  fontSize: 10.sp,
                  color: const Color(0xff5E5959),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15.h),
            Container(
              height: 25.h,
              width: 190.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                      color: const Color(0xffEAEAEA))),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Rescued",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: const Color(0xff9E9E9E)),
                  ),
                  Text(
                    "Vegan",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: const Color(0xff9E9E9E)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.clock,
                        size: 11.h,
                        color: const Color(0xffF9545B),
                      ),
                      SizedBox(width: 3.w),
                      Text(
                        "30 min",
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0xff9E9E9E)),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          width: 135.w,
          child: Column(
            children: [
              Text(
                "Nutritional Value",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: const Color(0xff5E5959)),
              ),
              SizedBox(height: 5.h),
              SizedBox(
                width: 135.w,
                child: const Divider(
                  thickness: 1,
                  color: Color(0xff5D5959),
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Protein",
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff0F0C0C)),
                  ),
                  Text(
                    "2.5g",
                    style: TextStyle(
                        fontSize: 9.sp,
                        color: const Color(0xff0F0C0C)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Carbohydrates",
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff0F0C0C)),
                  ),
                  // SizedBox(width: 85.w),
                  Text(
                    "14.7g",
                    style: TextStyle(
                        fontSize: 9.sp,
                        color: const Color(0xff0F0C0C)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sodium",
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff0F0C0C)),
                  ),
                  // SizedBox(width: 85.w),
                  Text(
                    "19%*",
                    style: TextStyle(
                        fontSize: 9.sp,
                        color: const Color(0xff0F0C0C)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Potassium",
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff0F0C0C)),
                  ),
                  // SizedBox(width: 85.w),
                  Text(
                    "5%*",
                    style: TextStyle(
                        fontSize: 9.sp,
                        color: const Color(0xff0F0C0C)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Rich in Vitamin A, C and B3",
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff0F0C0C)),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              SizedBox(
                width: 135.w,
                child: const Divider(
                  thickness: 1,
                  color: Color(0xff5D5959),
                ),
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [
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
                  ),
                  Text(
                    "*Daily value",
                    style: TextStyle(
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
