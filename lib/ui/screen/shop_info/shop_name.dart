import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GalleryName extends StatelessWidget {
  const GalleryName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 30.sp, left: 14.sp),
      child: Text(
        'ShowCase',
        style: GoogleFonts.anonymousPro(
          fontSize: 22.sp,
          fontWeight: FontWeight.w800,
          color: Colors.grey[800],
          height: 0,
        ),
      ),
    );
  }
}
