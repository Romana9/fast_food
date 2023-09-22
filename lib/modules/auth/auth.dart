import 'package:fast_food/core/cubit/app_cubit.dart';
import 'package:fast_food/helper/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../start_up/welcome/welcome.dart';
import 'widgets/auth_appbar.dart';

final _loginMailController = TextEditingController();
final _passController = TextEditingController();
final _regmailController = TextEditingController();
final _regphoneController = TextEditingController();
final _regpassController = TextEditingController();
final _regpass2Controller = TextEditingController();
final _fogetMailController = TextEditingController();

final _formkey = GlobalKey<FormState>();
final _regformkey = GlobalKey<FormState>();
final _forgetformkey = GlobalKey<FormState>();

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffF2F2F2),
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const AuthAppBar(),
                  SizedBox(height: 50.h),
                  if (AppCubit.get(context).logButton == 0) ...{
                    Form(
                      key: _formkey,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 48.w),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _loginMailController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Enter Email please';
                                }
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(text);
                                if (emailValid) {
                                  return null;
                                } else {
                                  return 'Email is not true';
                                }
                              },
                              cursorColor: Appcolors.primary,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Email",
                                hintStyle: const TextStyle(color: Colors.grey),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            TextFormField(
                              controller: _passController,
                              validator: (text) {
                                {
                                  if (text == null || text.trim().isEmpty) {
                                    return 'Enter Password please';
                                  }
                                  if (text.length < 8) {
                                    return 'Password is smaller than 8 char';
                                  }
                                  return null;
                                }
                              },
                              cursorColor: Appcolors.primary,
                              obscureText:
                                  AppCubit.get(context).isSecure == true
                                      ? true
                                      : false,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                suffixIconColor: const Color(0xffF8774A),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Password",
                                hintStyle: const TextStyle(color: Colors.grey),
                                suffixIcon: AppCubit.get(context).isSecure ==
                                        true
                                    ? InkWell(
                                        onTap: () {
                                          AppCubit.get(context)
                                              .isSecureIcon(false);
                                        },
                                        child: const Icon(Icons.visibility_off))
                                    : InkWell(
                                        onTap: () {
                                          AppCubit.get(context)
                                              .isSecureIcon(true);
                                        },
                                        child: const Icon(Icons.visibility)),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {
                                  AppCubit.get(context).logButtonIndex(2);
                                },
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      color: Appcolors.primary,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            ElevatedButton(
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {}
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffF8774A),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                  minimumSize: Size(314.w, 56.h),
                                ),
                                child: Text(
                                  "Login",
                                  style: TextStyle(fontSize: 17.sp),
                                )),
                            SizedBox(height: 30.h),
                            Text(
                              "Or",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 30.h),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Welcome()));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r),
                                  ),
                                  minimumSize: Size(314.w, 56.h),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/img/Google.png",
                                        height: 24.h),
                                    Text(
                                      "Log In with Google",
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          color: const Color.fromARGB(
                                              178, 0, 0, 0)),
                                    )
                                  ],
                                )),
                            SizedBox(height: 30.h),
                          ],
                        ),
                      ),
                    ),
                  } else if (AppCubit.get(context).logButton == 1) ...{
                    Form(
                      key: _regformkey,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 48.w),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize: 36.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffF8774A)),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                      height: 45.h,
                                      width: 45.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: SvgPicture.asset(
                                          "assets/img/flat-color-icons_google.svg")),
                                )
                              ],
                            ),
                            SizedBox(height: 30.h),
                            TextFormField(
                              controller: _regmailController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Enter Email please';
                                }
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(text);
                                if (emailValid) {
                                  return null;
                                } else {
                                  return 'Email is not true';
                                }
                              },
                              cursorColor: Appcolors.primary,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Email",
                                hintStyle: const TextStyle(color: Colors.grey),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            TextFormField(
                              controller: _regphoneController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Enter Mobile Number please';
                                }
                                return null;
                              },
                              cursorColor: Appcolors.primary,
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Mobile Number",
                                hintStyle: const TextStyle(color: Colors.grey),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            TextFormField(
                              controller: _regpassController,
                              validator: (text) {
                                {
                                  if (text == null || text.trim().isEmpty) {
                                    return 'Enter Password please';
                                  }
                                  if (text.length < 8) {
                                    return 'Password is smaller than 8 char';
                                  }
                                  return null;
                                }
                              },
                              cursorColor: Appcolors.primary,
                              obscureText:
                                  AppCubit.get(context).isSecure2 == true
                                      ? true
                                      : false,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Password",
                                hintStyle: const TextStyle(color: Colors.grey),
                                suffixIconColor: const Color(0xffF8774A),
                                suffixIcon: AppCubit.get(context).isSecure2 ==
                                        true
                                    ? InkWell(
                                        onTap: () {
                                          AppCubit.get(context)
                                              .isSecureIcon2(false);
                                        },
                                        child: const Icon(Icons.visibility_off))
                                    : InkWell(
                                        onTap: () {
                                          AppCubit.get(context)
                                              .isSecureIcon2(true);
                                        },
                                        child: const Icon(Icons.visibility)),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            TextFormField(
                              controller: _regpass2Controller,
                              validator: (text) {
                                {
                                  if (text == null ||
                                      text.trim().isEmpty ||
                                      _regpass2Controller.text !=
                                          _regpassController.text) {
                                    return 'Password Not Match';
                                  }
                                  return null;
                                }
                              },
                              cursorColor: Appcolors.primary,
                              obscureText:
                                  AppCubit.get(context).isSecure3 == true
                                      ? true
                                      : false,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Confirm Password",
                                hintStyle: const TextStyle(color: Colors.grey),
                                suffixIconColor: const Color(0xffF8774A),
                                suffixIcon: AppCubit.get(context).isSecure3 ==
                                        true
                                    ? InkWell(
                                        onTap: () {
                                          AppCubit.get(context)
                                              .isSecureIcon3(false);
                                        },
                                        child: const Icon(Icons.visibility_off))
                                    : InkWell(
                                        onTap: () {
                                          AppCubit.get(context)
                                              .isSecureIcon3(true);
                                        },
                                        child: const Icon(Icons.visibility)),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      if (_regformkey.currentState!
                                          .validate()) {}
                                      // Navigator.pushReplacement(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => const Auth()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xffF8774A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                      ),
                                      minimumSize: Size(183.w, 58.h),
                                    ),
                                    child: Text(
                                      "Sign-up",
                                      style: TextStyle(fontSize: 17.sp),
                                    )),
                                InkWell(
                                  onTap: () {
                                    AppCubit.get(context).logButtonIndex(0);
                                  },
                                  child: Text(
                                    "Already a\nMember? Login",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20.h),
                          ],
                        ),
                      ),
                    ),
                  } else if (AppCubit.get(context).logButton == 2) ...{
                    Form(
                      key: _forgetformkey,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 48.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                AppCubit.get(context).logButtonIndex(0);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.grey,
                                size: 30.h,
                              ),
                            ),
                            SizedBox(height: 30.h),
                            Text(
                              "Forgot\nPassword?",
                              style: TextStyle(
                                  fontSize: 36.sp,
                                  color: const Color(0xffF8774A)),
                            ),
                            SizedBox(height: 30.h),
                            TextFormField(
                              controller: _fogetMailController,
                              validator: (text) {
                                if (text == null || text.trim().isEmpty) {
                                  return 'Enter Email please';
                                }
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(text);
                                if (emailValid) {
                                  return null;
                                } else {
                                  return 'Email is not true';
                                }
                              },
                              cursorColor: Appcolors.primary,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIconColor: const Color(0xffF8774A),
                                hintText: "Enter your email address",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 14.sp),
                                prefixIcon: const Icon(Icons.mail),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.r))),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "* ",
                                  style: TextStyle(color: Color(0xffFF4B26)),
                                ),
                                Text(
                                  "We will send you a message to set or reset your\nnew password",
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ],
                            ),
                            SizedBox(height: 40.h),
                            const Text(
                              "Send code",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (_forgetformkey.currentState!
                                        .validate()) {
                                      AppCubit.get(context).logButtonIndex(0);
                                    }
                                  },
                                  child: Container(
                                    height: 51.h,
                                    width: 51.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                        color: const Color(0xffF8774A)),
                                    child: Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                      size: 30.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                          ],
                        ),
                      ),
                    ),
                  }
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
