import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../account/account.dart';
import '../cart/cart.dart';
import '../home/home.dart';
import '../offers/offers.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        const Home(),
        const Offers(),
        const Cart(),
        const Account(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          iconSize: 24.h,
          title: ("HOME"),
          textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          activeColorPrimary: const Color(0xffFF6838),
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.star),
          iconSize: 24.h,
          title: ("OFFERS"),
          textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          activeColorPrimary: const Color(0xffFF6838),
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.cart),
          iconSize: 24.h,
          title: ("CART"),
          textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          activeColorPrimary: const Color(0xffFF6838),
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.person),
          iconSize: 24.h,
          title: ("ACCOUNT"),
          textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          activeColorPrimary: const Color(0xffFF6838),
          inactiveColorPrimary: Colors.black,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.r),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}
