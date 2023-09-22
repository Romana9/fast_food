import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
import 'widgets/apply_button.dart';
import 'widgets/custom_description.dart';
import 'widgets/ingredient_container.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              height: 326.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/cartcover.png"),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 55.h,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Center(
                                child: Icon(CupertinoIcons.back,
                                    size: 50.h, color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            height: 38.h,
                            width: 118.w,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(32.r),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(CupertinoIcons.bolt_fill,
                                      color: Color(0xffC4C4C4)),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Icon(Icons.star, color: Colors.white)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 310.h,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.r),
                  topLeft: Radius.circular(20.r),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomDescription(),
                    SizedBox(height: 27.h),
                    const IngredientContainer(),
                    SizedBox(height: 50.h),
                    const ApplyButton(),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 288.h,
            left: 19.w,
            child: Container(
              height: 51.h,
              width: 171.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10.r,
                    spreadRadius: 1.r,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fried Rice",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff4A4A4A)),
                    ),
                    Text(
                      "Pista House, Kukatpally",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff616161)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 288.h,
            right: 19.w,
            child: Container(
              height: 55.h,
              width: 55.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xffFF785B),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10.r,
                    spreadRadius: 1.r,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: LikeButton(
                circleColor: const CircleColor(
                    start: Color(0xffFD6B4B), end: Color(0xffFD6B4B)),
                bubblesColor: const BubblesColor(
                  dotPrimaryColor: Color(0xffFD6B4B),
                  dotSecondaryColor: Color(0xffFD6B4B),
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.favorite,
                    color: isLiked ? const Color(0xffFD6B4B) : Colors.grey,
                    size: 35.h,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
