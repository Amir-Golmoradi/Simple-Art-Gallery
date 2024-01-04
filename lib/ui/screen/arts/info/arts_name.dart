import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../constant/artboard_details.dart';

class ArtsName extends StatelessWidget {
  const ArtsName({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: Adaptive.h(10.sp),
      left: Adaptive.w(7.sp),
      child: Text(
        artsName[index],
        style: GoogleFonts.anonymousPro(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
