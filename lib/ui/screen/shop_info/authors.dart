import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AuthorsSign extends StatelessWidget {
  const AuthorsSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Build By Flutter 🐦',
      style: GoogleFonts.anonymousPro(
          fontSize: 18.sp,
          fontWeight: FontWeight.w800,
          color: Colors.grey[800]),
    );
  }
}
