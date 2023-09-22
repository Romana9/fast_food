import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
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
              height: 47.h,
              width: 47.w,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(100.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/img/Hot-deal1.png"),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Hot Deals",
              style: TextStyle(
                  fontSize: 13.31.sp,
                  color: const Color(0xff707070)),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 47.h,
              width: 47.w,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(100.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/img/Hot-deal2.png"),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "New on\nFastFood",
              style: TextStyle(
                  fontSize: 13.31.sp,
                  color: const Color(0xff707070)),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 47.h,
              width: 47.w,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(100.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/img/Hot-deal3.png"),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Save Food,\nSave Hunger",
              style: TextStyle(
                  fontSize: 13.31.sp,
                  color: const Color(0xff707070)),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 47.h,
              width: 47.w,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(100.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/img/Hot-deal4.png"),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Set Your\nPreferences\nNow!",
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
