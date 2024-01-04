import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() {
    Timer(
      const Duration(seconds: 4),
      () => context.go('/intro'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animation/splash-animation.json',
              width: Adaptive.w(27.sp),
              height: Adaptive.h(20.sp),
            ),
            SizedBox(height: Adaptive.cm(2)),
            Text(
              'Modern Shop',
              style: GoogleFonts.courierPrime(
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(height: Adaptive.mm(2)),
            Text(
              'Made In Flutter 🐦',
              style: GoogleFonts.courierPrime(
                fontSize: 15.sp,
                fontWeight: FontWeight.w800,
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
