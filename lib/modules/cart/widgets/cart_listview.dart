import 'package:fast_food/core/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: AppCubit.get(context).cartList.length,
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 75.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 72.95.h,
                        width: 88.35.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AppCubit.get(context).cartList[index]
                                ["image"],
                          ),
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppCubit.get(context).cartList[index]["title"],
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff0A191E)),
                          ),
                          Text(
                            AppCubit.get(context).cartList[index]["subTitle"],
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff0A191E)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 130.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30.67.h,
                          width: 83.58.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffF8774A)),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.remove,
                                      color: const Color(0xffEA6435),
                                      size: 23.h),
                                ),
                                Text(
                                  AppCubit.get(context).cartList[index]
                                      ["amount"],
                                  style: TextStyle(
                                      fontSize: 21.sp,
                                      color: const Color(0xffEA6435)),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.add,
                                      color: const Color(0xffEA6435),
                                      size: 23.h),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          AppCubit.get(context).cartList[index]["price"],
                          style: TextStyle(
                              fontSize: 14.sp, color: const Color(0xff050505)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
