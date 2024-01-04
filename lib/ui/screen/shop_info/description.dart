import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 14.sp),
      child: Text(
        'Pick from selected Arts',
        style: GoogleFonts.anonymousPro(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.grey[700],
          height: 0,
        ),
      ),
    );
  }
}
