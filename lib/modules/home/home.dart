import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../your_orders/your_orders.dart';
import 'widgets/all_container.dart';
import 'widgets/custom_50listview.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/custom_braekfast.dart';
import 'widgets/custom_carousel.dart';
import 'widgets/custom_carousel2.dart';
import 'widgets/custom_restaurants_listview.dart';
import 'widgets/nearby_listview.dart';
import 'widgets/order_again_listview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var buttonCarouselController = CarouselController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              const CustomAppBar(),
              Expanded(
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          CarouselSlider(
                            items: [
                              Image.asset("assets/img/home.png",
                                  height: 118.h, width: 379.w),
                              Image.asset("assets/img/Group 1734.png",
                                  height: 118.h, width: 379.w),
                            ],
                            carouselController: buttonCarouselController,
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              viewportFraction: 2,
                              aspectRatio: 2.7,
                              initialPage: 0,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          const CustomCarousel(),
                          SizedBox(height: 15.h),
                          const CustomBreakfast(),
                          SizedBox(height: 15.h),
                          const CustomCarousel2(),
                          SizedBox(height: 25.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Save Rescued Food for 50%!",
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          color: const Color(0xff4FA987),
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                    Text(
                                      "Left over supplies and food have been\nused up.",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: const Color(0xff999999)),
                                    ),
                                  ],
                                ),
                                AllContainer(
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.h),
                        ],
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Custom50Listview(),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          SizedBox(height: 30.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Order Again",
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff333333)),
                                    ),
                                    Text(
                                      "You Ordered from 17 Restaurants",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff999999)),
                                    ),
                                  ],
                                ),
                                AllContainer(
                                  onTap: () {
                                    PersistentNavBarNavigator.pushNewScreen(
                                      context,
                                      screen: const YourOrders(),
                                      withNavBar: false,
                                      pageTransitionAnimation:
                                          PageTransitionAnimation.fade,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.h),
                        ],
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: OrderAgainListView(),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          SizedBox(height: 30.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Popular Restaurants Nearby",
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff333333)),
                                    ),
                                    Text(
                                      "Some of them offer rescued food.",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff999999)),
                                    ),
                                  ],
                                ),
                                AllContainer(
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.h),
                        ],
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: CustomNearbyListView(),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          SizedBox(height: 30.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "All Restaurants",
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff333333)),
                                    ),
                                    Text(
                                      "256 Restaurants near you",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff999999)),
                                    ),
                                  ],
                                ),
                                AllContainer(
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 42.58.h,
                                width: 122.41.w,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(13.31.r),
                                    color: const Color(0xffF1F4F3)),
                                child: Center(
                                  child: Text(
                                    "Free Delivery",
                                    style: TextStyle(
                                        fontSize: 14.64.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                              Container(
                                height: 42.58.h,
                                width: 110.44.w,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(13.31.r),
                                    color: const Color(0xffF1F4F3)),
                                child: Center(
                                  child: Text(
                                    "Rescued",
                                    style: TextStyle(
                                        fontSize: 14.64.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                              Container(
                                height: 42.58.h,
                                width: 63.87.w,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(13.31.r),
                                    color: const Color(0xffF1F4F3)),
                                child: Center(
                                  child: Text(
                                    "Offer",
                                    style: TextStyle(
                                        fontSize: 14.64.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: CustomRestaurantsListView(),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(height: 30.h),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
