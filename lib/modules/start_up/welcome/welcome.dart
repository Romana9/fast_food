import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home_layout/home_layout.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF4B3A),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.w),
            child: Column(
              children: [
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeLayout()));
                    },
                    child: Text(
                      "SKIP >>",
                      style: TextStyle(fontSize: 18.sp, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Image.asset("assets/img/Group 1704.png", height: 150.h),
                SizedBox(height: 54.h),
                Text(
                  "Welcome,\nSumanya!",
                  style: TextStyle(
                      fontSize: 55.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 26.h),
                Text(
                  "Unlock the world of regular\nand rescued food by setting up\nyour delivery address.",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color.fromARGB(136, 255, 255, 255),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 124.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "SELECT LOCATION",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: const Color.fromARGB(136, 255, 255, 255),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 27.h),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const Auth()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      minimumSize: Size(314.w, 70.h),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 14.w),
                      child: Row(
                        children: [
                          Image.asset("assets/img/locate.png", height: 35.h),
                          SizedBox(width: 20.w),
                          Text(
                            "Locate Me",
                            style: TextStyle(
                                fontSize: 17.sp,
                                color: const Color(0xffFF460A),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
