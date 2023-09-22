import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map> notification = [
      {
        "title": "Your order deliverd successfully, We hope you to enjoy it",
        "date": "02 Nov",
        "isRead": false,
      },
      {
        "title": "Tap here to track your order from Vada Pav station",
        "date": "02 Nov",
        "isRead": true,
      },
    ];
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: notification.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            color: notification[index]["isRead"]
                ? Colors.transparent
                : const Color.fromARGB(55, 255, 103, 56),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/img/logo.png", height: 70.h, width: 70.w),
                  SizedBox(width: 10.w),
                  SizedBox(
                    width: 300.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          notification[index]["title"],
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          notification[index]["date"],
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
