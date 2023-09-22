import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/notification_listview.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back)),
                  Text(
                    "Mark as Read",
                    style: TextStyle(fontSize: 14.sp, color: Colors.red),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                "Notifications",
                style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 20.h),
            const NotificationListView(),
          ],
        ),
      ),
    );
  }
}
