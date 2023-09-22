import 'package:fast_food/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/your_orders_listview.dart';

class YourOrders extends StatelessWidget {
  const YourOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back)),
                SizedBox(width: 20.w),
                Text(
                  "My Orders",
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Appcolors.primary),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          const YourOrdersListView(),
          SizedBox(height: 20.h),
        ],
      )),
    );
  }
}
