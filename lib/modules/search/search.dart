import 'package:fast_food/core/cubit/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../helper/colors.dart';
import '../home/widgets/custom_carousel2.dart';
import 'widgets/search_listview.dart';

final _loginMailController = TextEditingController();

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned(
                right: 0,
                left: 0,
                child: Container(
                  height: 200.h,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img/cartitem2.png"),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 330.w,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                AppCubit.get(context).isSearchingFun(true);
                              } else {
                                AppCubit.get(context).isSearchingFun(false);
                              }
                            },
                            controller: _loginMailController,
                            cursorColor: Appcolors.primary,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Search food nearby",
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30.h,
                                color: const Color(0xff4F4F4F),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17.3.sp,
                                  fontWeight: FontWeight.w600),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.h, horizontal: 20.w),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10.r)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r))),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r))),
                            ),
                          ),
                        ),
                        Container(
                          height: 49.22.h,
                          width: 49.22.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.r),
                              color: Colors.white),
                          child: const Icon(
                            Icons.filter_list_alt,
                            color: Color(0xff4FA987),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 170.h,
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                    padding: EdgeInsets.all(20.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        topLeft: Radius.circular(20.r),
                      ),
                    ),
                    child: AppCubit.get(context).isSearching == false
                        ? SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.w, top: 35.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Recent Searches",
                                    style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff333333)),
                                  ),
                                  SizedBox(height: 22.h),
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.search,
                                        color: const Color(0xffD7D6D6),
                                        size: 20.h,
                                      ),
                                      SizedBox(width: 7.w),
                                      Text(
                                        "Pizza",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: const Color(0xff7D7D7D)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4.h),
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.search,
                                        color: const Color(0xffD7D6D6),
                                        size: 20.h,
                                      ),
                                      SizedBox(width: 7.w),
                                      Text(
                                        "Pizza Hut",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: const Color(0xff7D7D7D)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4.h),
                                  Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.search,
                                        color: const Color(0xffD7D6D6),
                                        size: 20.h,
                                      ),
                                      SizedBox(width: 7.w),
                                      Text(
                                        "Chocolate Waffles",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: const Color(0xff7D7D7D)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 52.h),
                                  Text(
                                    "Popular Cuisines",
                                    style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff333333)),
                                  ),
                                  SizedBox(height: 16.h),
                                  const CustomCarousel2()
                                ],
                              ),
                            ),
                          )
                        : const SearchListView()),
              ),
            ],
          ),
        );
      },
    );
  }
}
