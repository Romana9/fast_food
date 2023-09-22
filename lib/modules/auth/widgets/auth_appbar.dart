import 'package:fast_food/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/cubit/app_cubit.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          height: 345.h,
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
                height: 250.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Colors.transparent,
                    shape: Border(
                        bottom: BorderSide(
                      color: AppCubit.get(context).logButton == 0 ||
                              AppCubit.get(context).logButton == 2
                          ? Appcolors.primary
                          : Colors.transparent,
                      width: 3.w,
                    )),
                    child: TextButton(
                        onPressed: () {
                          AppCubit.get(context).logButtonIndex(0);
                        },
                        child: Text(
                          'Login',
                          style:
                              TextStyle(color: Colors.black, fontSize: 20.sp),
                        )),
                  ),
                  Material(
                    color: Colors.transparent,
                    shape: Border(
                        bottom: BorderSide(
                      color: AppCubit.get(context).logButton == 1
                          ? Appcolors.primary
                          : Colors.transparent,
                      width: 3.w,
                    )),
                    child: TextButton(
                        onPressed: () {
                          AppCubit.get(context).logButtonIndex(1);
                        },
                        child: Text(
                          'Sign-up',
                          style:
                              TextStyle(color: Colors.black, fontSize: 20.sp),
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
