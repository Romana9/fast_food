// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllContainer extends StatelessWidget {
  void Function()? onTap;
  AllContainer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 57.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.31.r),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "All ",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: const Color(0xffC4C4C4),
              size: 15.h,
            )
          ],
        ),
      ),
    );
  }
}
