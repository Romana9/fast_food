import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientContainer extends StatelessWidget {
  const IngredientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 350.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
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
        padding:
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ingredients",
              style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff797979)),
            ),
            SizedBox(height: 3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 43.78.h,
                  width: 61.48.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/img/ingredient1.png"),
                    ),
                  ),
                ),
                Container(
                  height: 43.78.h,
                  width: 61.48.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/img/ingredient2.png"),
                    ),
                  ),
                ),
                Container(
                  height: 43.78.h,
                  width: 61.48.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/img/ingredient3.png"),
                    ),
                  ),
                ),
                Container(
                  height: 43.78.h,
                  width: 61.48.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/img/ingredient4.png"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
