import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding/onboarding.dart';

import '../../auth/auth.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 0;
    final onboardingPagesList = [
      PageModel(
        widget: Column(
          children: [
            SizedBox(height: 80.h),
            Image.asset(
              "assets/img/smalllogo.png",
              height: 73.h,
            ),
            SizedBox(height: 25.h),
            Align(
              child: Text(
                "Save Food\nwith our new\nFeature!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 55.sp, color: Colors.white),
              ),
            ),
            Image.asset("assets/img/onboarding1.png", height: 340.h),
          ],
        ),
      ),
      PageModel(
        widget: Column(
          children: [
            SizedBox(height: 80.h),
            Image.asset(
              "assets/img/smalllogo.png",
              height: 73.h,
            ),
            SizedBox(height: 25.h),
            Align(
              child: Text(
                "Set preferences for\nmultiple users from\nvarious restaurants!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 44.sp, color: Colors.white),
              ),
            ),
            Image.asset("assets/img/onboarding2.png", height: 340.h),
          ],
        ),
      ),
      PageModel(
        widget: Column(
          children: [
            SizedBox(height: 80.h),
            Image.asset(
              "assets/img/smalllogo.png",
              height: 73.h,
            ),
            SizedBox(height: 25.h),
            Align(
              child: Text(
                "Fast, rescued\nfood at your\nservice.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 55.sp, color: Colors.white),
              ),
            ),
            Image.asset("assets/img/onboarding3.png", height: 340.h),
          ],
        ),
      ),
    ];

    return Scaffold(
        backgroundColor: const Color(0xffFF4B3A),
        body: SafeArea(
          child: Onboarding(
            pages: onboardingPagesList,
            onPageChange: (int pageIndex) {
              index = pageIndex;
            },
            startPageIndex: 0,
            footerBuilder: (context, dragDistance, pagesLength, setIndex) {
              return index == 2
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 60.h),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Auth()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            minimumSize: Size(314.w, 70.h),
                          ),
                          child: Text(
                            "Get started!",
                            style: TextStyle(
                                color: const Color(0xffFF460A),
                                fontSize: 17.sp),
                          )),
                    )
                  : Padding(
                      padding: EdgeInsets.only(bottom: 70.h, right: 40.w),
                      child: CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          indicatorDesign: IndicatorDesign.polygon(
                            polygonDesign: PolygonDesign(
                              polygon: DesignType.polygon_circle,
                            ),
                          ),
                        ),
                      ),
                    );
            },
          ),
        ));
  }
}
