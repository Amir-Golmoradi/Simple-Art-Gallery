import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../constant/artboard_details.dart';

class ArtsPrice extends StatelessWidget {
  const ArtsPrice({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: Adaptive.h(7.sp),
      left: Adaptive.w(7.sp),
      child: Text(
        artsPrice[index],
        style: GoogleFonts.anonymousPro(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
