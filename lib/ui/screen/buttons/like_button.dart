import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../bloc/home-bloc/home_bloc.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({super.key, required this.homeBloc});
  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Adaptive.h(4.sp),
      right: Adaptive.w(5.sp),
      child: IconButton(
        onPressed: () {
          homeBloc
              .add(HomeProductWishlistButtonClickedEvent());
        },
        icon: Icon(Icons.favorite,
            color: Colors.red, size: 23.sp),
      ),
    );
  }
}
