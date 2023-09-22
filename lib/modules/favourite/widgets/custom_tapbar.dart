import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/cubit/app_cubit.dart';
import '../../../helper/colors.dart';

class CustomTapBar extends StatelessWidget {
  const CustomTapBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          height: 160.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r),
              ),
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/img/logo.png",
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Colors.transparent,
                    shape: Border(
                      bottom: BorderSide(
                        color: AppCubit.get(context).likedButton == 0
                            ? Appcolors.primary
                            : Colors.transparent,
                        width: 3.w,
                      ),
                    ),
                    child: TextButton(
                        onPressed: () {
                          AppCubit.get(context).likedButtonFun(0);
                        },
                        child: Text(
                          'Liked',
                          style: TextStyle(
                              color: AppCubit.get(context).likedButton == 0
                                  ? Appcolors.primary
                                  : Colors.black,
                              fontSize: 24.sp),
                        )),
                  ),
                  Material(
                    color: Colors.transparent,
                    shape: Border(
                        bottom: BorderSide(
                      color: AppCubit.get(context).likedButton == 1
                          ? Appcolors.primary
                          : Colors.transparent,
                      width: 3.w,
                    )),
                    child: TextButton(
                        onPressed: () {
                          AppCubit.get(context).likedButtonFun(1);
                        },
                        child: Text(
                          'Saved',
                          style: TextStyle(
                              color: AppCubit.get(context).likedButton == 1
                                  ? Appcolors.primary
                                  : Colors.black,
                              fontSize: 24.sp),
                        )),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
