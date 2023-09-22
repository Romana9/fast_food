import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../notification/notification.dart';

class CusomPagesRow extends StatelessWidget {
  const CusomPagesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 54.h,
            width: 75.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.bookmark, size: 22.h),
                SizedBox(height: 5.h),
                Text(
                  "Bookmarks",
                  style: TextStyle(fontSize: 10.sp),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: const NotificationScreen(),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.fade,
            );
          },
          child: Container(
            height: 54.h,
            width: 75.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.bell, size: 22.h),
                SizedBox(height: 5.h),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 10.sp),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 54.h,
            width: 75.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.settings, size: 22.h),
                SizedBox(height: 5.h),
                Text(
                  "Settings",
                  style: TextStyle(fontSize: 10.sp),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 54.h,
            width: 75.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(CupertinoIcons.creditcard, size: 22.h),
                SizedBox(height: 5.h),
                Text(
                  "Payments",
                  style: TextStyle(fontSize: 10.sp),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
