import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../auth/auth.dart';
import '../your_orders/your_orders.dart';
import 'widgets/custom_pages_row.dart';
import 'widgets/custom_profile_button.dart';
import 'widgets/profile_container.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
                left: 27.w, right: 27.w, top: 43.h, bottom: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Personal details",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 15.sp, color: const Color(0xffFA4A0C)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                const ProfileContainer(),
                SizedBox(height: 20.h),
                const CusomPagesRow(),
                SizedBox(height: 30.h),
                CustomProfileButton(
                  onPressed: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const YourOrders(),
                      withNavBar: false,
                      pageTransitionAnimation: PageTransitionAnimation.fade,
                    );
                  },
                  text: 'Your Orders',
                ),
                SizedBox(height: 19.h),
                CustomProfileButton(
                  onPressed: () {},
                  text: 'Feedback & Refunds',
                ),
                SizedBox(height: 19.h),
                CustomProfileButton(
                  onPressed: () {},
                  text: 'My Preferences',
                ),
                SizedBox(height: 19.h),
                CustomProfileButton(
                  onPressed: () {},
                  text: 'Help',
                ),
                SizedBox(height: 35.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Send Feedback",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                      ),
                      SizedBox(height: 11.h),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Report an Emergency",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                      ),
                      SizedBox(height: 11.h),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Rate us on the Play Store",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                      ),
                      SizedBox(height: 11.h),
                      InkWell(
                        onTap: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: const Auth(),
                            withNavBar: false,
                            pageTransitionAnimation:
                                PageTransitionAnimation.fade,
                          );
                        },
                        child: Text(
                          "Log Out",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          minimumSize: Size(143.w, 40.h),
                        ),
                        child: SizedBox(
                          width: 60.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(CupertinoIcons.exclamationmark_circle,
                                  size: 20.h, color: Colors.black),
                              Text(
                                "About",
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffF8774A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        minimumSize: Size(314.w, 49.h),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Text(
                          "Update",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
