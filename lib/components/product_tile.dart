import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_shop/model/products.dart';
import 'package:modern_shop/model/shop.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  const MyProductTile({super.key, required this.products});
  final Product products;

  // add to cart button logic
  void addToCart(BuildContext context) {
    // show dialog box for ask confirmation from user
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Add this item to your cart ?"),
        actions: [
          MaterialButton(
            onPressed: () => context.pop(context),
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              // pop dialog box
              context.pop(context);
              // add to cart
              context.read<Shop>().addToCart(products);
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(25),
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Image.asset(products.imageUrl)
                ),
              ),
              const SizedBox(height: 25),
              // product name
              Text(
                products.name,
                style: GoogleFonts.robotoSlab(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ),
              // product description
              Text(
                products.description,
                style: GoogleFonts.robotoSlab(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              // product price + add to cart button
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${products.price.toStringAsFixed(2)}",
                style: GoogleFonts.robotoSlab(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(14)),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: const Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
