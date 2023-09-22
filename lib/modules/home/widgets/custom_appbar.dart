import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../search/search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(33.r),
          bottomRight: Radius.circular(33.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/img/home_alt_outline.png",
                        height: 34.h, width: 34.w),
                    SizedBox(width: 5.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "21-42-34, Banjara Hills, Hyder...",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16.sp, color: const Color(0xffB2B2B2)),
                        ),
                      ],
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.favorite_outlined,
                    color: const Color.fromARGB(183, 79, 169, 135),
                    size: 35.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const Search(),
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.fade,
                  );
                },
                child: Container(
                  height: 39.h,
                  width: 323.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.31.r),
                      color: const Color(0xffF3F3F3)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30.h,
                          color: const Color(0xff4F4F4F),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Search food ",
                          style: TextStyle(fontSize: 17.3.sp),
                        ),
                        Text(
                          "nearby",
                          style:
                              TextStyle(fontSize: 17.3.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  height: 39.h,
                  width: 39.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.r),
                      border: Border.all(color: const Color(0xffC8C8C8))),
                  child: const Icon(
                    Icons.filter_list_alt,
                    color: Colors.green,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
