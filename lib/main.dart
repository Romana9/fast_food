import 'package:fast_food/core/cubit/app_cubit.dart';
import 'package:fast_food/core/stripe_payment/stripe_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'modules/start_up/splash_view/splash_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const FastFood());
}

class FastFood extends StatelessWidget {
  const FastFood({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => AppCubit()),
            ],
            child: const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Fast Food',
              home: SplashView(),
            ),
          );
        });
  }
}
