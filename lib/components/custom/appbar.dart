import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_shop/ui/bloc/home-bloc/home_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

AppBar customAppbar(HomeBloc homeBloc) {
  return AppBar(
    title: Text(
      'Art Gallery',
      style: GoogleFonts.anonymousPro(
          fontWeight: FontWeight.w900,
          fontSize: 21.sp,
          color: Colors.grey[800]),
    ),
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
        onPressed: () {
          homeBloc.add(HomeCartButtonNavigateEvent());
        },
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.grey[700],
          size: 28,
        ),
      ),
      IconButton(
        onPressed: () {
          homeBloc.add(HomeWishlistButtonNavigateEvent());
        },
        icon: Icon(
          Icons.favorite_rounded,
          color: Colors.grey[700],
          size: 28,
        ),
      ),
    ],
  );
}
