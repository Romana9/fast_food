import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarousel2 extends StatelessWidget {
  const CustomCarousel2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 75.5.h,
              width: 75.5.w,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(100.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/img/purepng1.png"),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Daily Meals",
              style: TextStyle(
                  fontSize: 13.31.sp,
                  color: const Color(0xff707070)),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 75.5.h,
              width: 75.5.w,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(100.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/img/purepng2.png"),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Middle-\nEastern",
              style: TextStyle(
                  fontSize: 13.31.sp,
                  color: const Color(0xff707070)),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 75.5.h,
              width: 75.5.w,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(100.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/img/purepng3.png"),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Chinese",
              style: TextStyle(
                  fontSize: 13.31.sp,
                  color: const Color(0xff707070)),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 75.5.h,
              width: 75.5.w,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(100.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/img/purepng4.png"),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Desi",
              style: TextStyle(
                  fontSize: 13.31.sp,
                  color: const Color(0xff707070)),
            ),
          ],
        ),
      ],
    );
  }
}
