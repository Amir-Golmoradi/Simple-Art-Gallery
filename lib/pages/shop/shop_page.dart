import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_shop/components/my_drawer.dart';
import 'package:modern_shop/components/product_tile.dart';
import 'package:modern_shop/model/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shopItem;
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => context.push("/cart"),
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.inversePrimary,
          )
        ],
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Shop Page",
          style: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          //shop title
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Text(
              "Shop",
              style: GoogleFonts.robotoSlab(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                height: 0,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          const SizedBox(height: 3),
          // shop subtitle
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Pick from vip products ",
              style: GoogleFonts.robotoSlab(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  height: 0,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          // product list

          SizedBox(
            height: 550,
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return MyProductTile(products: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
