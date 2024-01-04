import 'package:flutter/material.dart';
import 'package:modern_shop/ui/bloc/home-bloc/home_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton(
      {super.key, required this.homeBloc});
  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: Adaptive.h(7.sp),
        right: Adaptive.w(7.sp),
        child: actionButton(homeBloc));
  }

  FloatingActionButton actionButton(HomeBloc homeBloc) {
    return FloatingActionButton(
      onPressed: () {
        homeBloc.add(HomeProductCartButtonClickedEvent());
      },
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(
          width: 3,
          color: Colors.white,
        ),
      ),
      child: const Icon(
        Icons.add,
        size: 31,
        color: Colors.white,
      ),
    );
  }
}
