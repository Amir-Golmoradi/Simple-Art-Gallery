import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modern_shop/components/custom/appbar.dart';
import 'package:modern_shop/ui/screen/arts/art_boards.dart';
import 'package:modern_shop/ui/screen/shop_info/authors.dart';
import 'package:modern_shop/ui/screen/shop_info/shop_name.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../bloc/home-bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = HomeBloc();
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) =>
          current is HomeActionState,
      buildWhen: (previous, current) =>
          current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageState) {
          context.push('/cart');
        } else if (state
            is HomeNavigateToWishListPageState) {
          context.push('/wishlist');
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: customAppbar(homeBloc),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const GalleryName(),
              // const Description(),
              SizedBox(height: 15.sp),
              ArtBoard(homeBloc: homeBloc),
              const AuthorsSign()
            ],
          ),
        );
      },
    );
  }
}
