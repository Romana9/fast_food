import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      width: 375.w,
      decoration: BoxDecoration(
          color: const Color(0xffF8774A),
          borderRadius: BorderRadius.circular(28.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "100 \$",
            style: TextStyle(fontSize: 21.sp, color: Colors.white),
          ),
          Container(
            height: 34.h,
            width: 129.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20.r)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.remove, color: Colors.white, size: 23.h),
                  ),
                  Text(
                    "1",
                    style: TextStyle(fontSize: 21.sp, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.add, color: Colors.white, size: 23.h),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 35.h,
            width: 35.w,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Center(child: Icon(Icons.shopping_basket, size: 28.h)),
          )
        ],
      ),
    );
  }
}
