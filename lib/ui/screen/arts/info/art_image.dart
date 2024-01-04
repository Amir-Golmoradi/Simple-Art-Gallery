import 'package:flutter/material.dart';
import 'package:modern_shop/constant/artboard_details.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Arts extends StatelessWidget {
  const Arts({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      height: Adaptive.h(30.sp),
      color: Colors.grey[400],
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image(image: artBoards[index]),
      ),
    );
  }
}