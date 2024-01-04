import 'package:flutter/material.dart';
import 'package:modern_shop/constant/artboard_details.dart';
import 'package:modern_shop/ui/screen/arts/info/art_image.dart';
import 'package:modern_shop/ui/screen/arts/info/arts_name.dart';
import 'package:modern_shop/ui/screen/arts/info/arts_price.dart';
import 'package:modern_shop/ui/screen/buttons/buy_button.dart';
import 'package:modern_shop/ui/screen/buttons/like_button.dart';

import '../../bloc/home-bloc/home_bloc.dart';

class ArtBoard extends StatelessWidget {
  const ArtBoard({super.key, required this.homeBloc});
  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: artBoards.length,
        itemBuilder: (context, index) => Column(
          children: [
            Stack(
              children: [
                Arts(index: index),
                LikeButton(homeBloc: homeBloc),
                ArtsName(index: index),
                ArtsPrice(index: index),
                AddToCartButton(homeBloc: homeBloc)
              ],
            )
          ],
        ),
      ),
    );
  }
}
