import 'package:fast_food/core/cubit/app_cubit.dart';
import 'package:fast_food/core/stripe_payment/payment_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../helper/colors.dart';
import 'widgets/cart_listview.dart';
import 'widgets/delivery_container.dart';
import 'widgets/price_container.dart';

final _codeController = TextEditingController();

class Cart extends StatelessWidget {
  const Cart({super.key});

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
                  height: 220.h,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      opacity: 100,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img/cartcover.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 210.h,
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
                  child: AppCubit.get(context).cartList.isEmpty
                      ? Column(
                          children: [
                            Lottie.asset("assets/img/G9Cyu8b04X.json"),
                            Text(
                              "Cart is Empty",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                  fontSize: 40.sp,
                                  color: const Color(0xffF8774A),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      : SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.h, horizontal: 17.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Your Order",
                                          style: TextStyle(
                                              fontSize: 25.sp,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff0A191E)),
                                        ),
                                        SizedBox(width: 20.w),
                                        Row(
                                          children: [
                                            Image.asset("assets/img/icon.png",
                                                height: 16.h),
                                            Text(
                                              "  3",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        AppCubit.get(context).removeCartList();
                                      },
                                      child: const Icon(
                                          CupertinoIcons.clear_thick,
                                          color: Color(0xff0A191E)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25.h),
                                const DeliveryContainer(),
                                SizedBox(height: 20.h),
                                const CartListView(),
                                SizedBox(height: 25.h),
                                TextFormField(
                                  controller: _codeController,
                                  cursorColor: Appcolors.primary,
                                  textInputAction: TextInputAction.done,
                                  decoration: InputDecoration(
                                    suffixIcon: ElevatedButton(
                                      onPressed: () {
                                        _codeController.clear();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffF8774A),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                        ),
                                        minimumSize: Size(104.w, 40.h),
                                      ),
                                      child: Text(
                                        "Apply",
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "Enter Promo Code",
                                    hintStyle: TextStyle(
                                        color: const Color(0xff838383),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12.h, horizontal: 20.w),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                97, 158, 158, 158)),
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.r))),
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.r))),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                const PriceContainer(),
                                SizedBox(height: 20.h),
                                ElevatedButton(
                                  onPressed: () {
                                    PaymentManager.makePayment(350, "USD");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffF8774A),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.r),
                                    ),
                                    minimumSize: Size(157.93.w, 45.6.h),
                                  ),
                                  child: SizedBox(
                                    width: 85.w,
                                    child: Row(
                                      children: [
                                        Text("Payment   ",
                                            style: TextStyle(fontSize: 14.sp)),
                                        Icon(CupertinoIcons.arrow_right,
                                            size: 20.h)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
