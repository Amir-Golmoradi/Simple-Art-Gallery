import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_shop/components/my_button.dart';
import 'package:modern_shop/model/products.dart';
import 'package:modern_shop/model/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

// remove from cart button logic
  void removeItemFromCart(BuildContext context, Product products) {
    // show dialog box for ask confirmation from user
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Remove this item to your cart ?"),
        actions: [
          MaterialButton(
            onPressed: () => context.pop(context),
            child: const Text("NO"),
          ),
          MaterialButton(
            onPressed: () {
              // pop dialog box
              context.pop(context);
              // add to cart
              context.read<Shop>().removeFromCart(products);
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              content: Text(
                  "User wants to pay! connect this app to your paymane backend"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cartAccess = context.watch<Shop>().cartItem;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Cart Page",
          style: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: cartAccess.isEmpty
                ? Center(
                    child: Text(
                      "Your Cart is empty",
                      style: GoogleFonts.robotoSlab(
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: cartAccess.length,
                    itemBuilder: (context, index) {
                      final cart = cartAccess[index];

                      return ListTile(
                        title: Text(cart.name),
                        subtitle: Text(cart.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          onPressed: () => removeItemFromCart(context, cart),
                          icon: const Icon(Icons.delete_rounded),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: MyButton(
              onTap: () => payButtonPressed(context),
              child: Text(
                "PAY NOW",
                style: GoogleFonts.robotoSlab(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
          )
        ],
      ),
    );
  }
}
