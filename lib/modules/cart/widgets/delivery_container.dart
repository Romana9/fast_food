import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryContainer extends StatelessWidget {
  const DeliveryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.64.h,
      width: 378.81.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.31.r),
          color: const Color(0xffFEEBC1)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 17.w, vertical: 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                        "assets/img/home_alt_outline.png",
                        height: 36.h,
                        width: 36.w),
                    SizedBox(width: 5.w),
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "21-42-34, Banjara Hills,\nHyderabad, 500072",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color:
                                  const Color(0xff686868)),
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  "Edit Address",
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff0A191E)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30.4.h,
                      width: 35.34.w,
                      decoration: BoxDecoration(
                          color: const Color(0xffE6B64E),
                          borderRadius:
                              BorderRadius.circular(5.r)),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.clock,
                          size: 22.h,
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Text(
                      "30 mins",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff0A191E)),
                    ),
                  ],
                ),
                Text(
                  "Schedule time",
                  style: TextStyle(
                      fontSize: 11.sp,
                      color: const Color(0xff0A191E)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
