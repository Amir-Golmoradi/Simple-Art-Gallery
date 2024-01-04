import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Adaptive.w(33.sp),
      height: Adaptive.h(10.2.sp),
      decoration: ShapeDecoration(
        color: Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
          side: BorderSide(
              width: 3, color: Colors.grey[700]!),
        ),
      ),
      child: TextButton(
        onPressed: () {
          context.go('/home');
        },
        child: Text(
          'Login',
          style: GoogleFonts.courierPrime(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 19.sp,
          ),
        ),
      ),
    );
  }
}
