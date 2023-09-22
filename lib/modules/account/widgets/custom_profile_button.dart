import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const CustomProfileButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        minimumSize: Size(363.84.w, 60.h),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Icon(CupertinoIcons.right_chevron, size: 25.h, color: Colors.black)
          ],
        ),
      ),
    );
  }
}
