import 'package:fast_food/core/cubit/app_cubit.dart';
import 'package:fast_food/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../search/widgets/search_listview.dart';
import 'widgets/custom_tapbar.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffF2F2F2),
          body: SafeArea(
              child: Column(
            children: [
              const CustomTapBar(),
              SizedBox(height: 20.h),
              if (AppCubit.get(context).likedButton == 0) ...{
               AppCubit.get(context).savedItems.isEmpty
                    ? Column(
                          children: [
                            Lottie.asset("assets/img/like.json"),
                            Text(
                              "Nothing Liked",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                  fontSize: 40.sp,
                                  color: const Color(0xffF8774A),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                    :  Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: const SearchListView(),
                  ),
                ),
              },
              if (AppCubit.get(context).likedButton == 1) ...{
                AppCubit.get(context).savedItems.isEmpty
                    ? Column(
                          children: [
                            Lottie.asset("assets/img/LgXdyDxSJ4.json"),
                            Text(
                              "Nothing Saved",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                  fontSize: 40.sp,
                                  color: const Color(0xffF8774A),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                    : Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.w),
                          child: const SearchListView(),
                        ),
                      ),
              }
            ],
          )),
        );
      },
    );
  }
}
