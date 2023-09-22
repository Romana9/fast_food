import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      width: 364.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.w),
        child: Row(
          children: [
            Container(
              height: 93.h,
              width: 93.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/avatar.png"),
                ),
              ),
            ),
            SizedBox(width: 20.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sumanya K.",
                  style: TextStyle(fontSize: 18.sp),
                ),
                Text(
                  "sumanyak@gmail.com",
                  style: TextStyle(
                      fontSize: 15.sp, color: Colors.grey),
                ),
                SizedBox(
                  width: 120.w,
                  child: const Divider(thickness: 1),
                ),
                Text(
                  "#21-22-31, Masab Tank,\nHyderabad.",
                  style: TextStyle(
                      fontSize: 15.sp, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
