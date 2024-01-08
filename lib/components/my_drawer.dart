import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modern_shop/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          Theme.of(context).colorScheme.background,
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 70,
                    color: Theme.of(context)
                        .colorScheme
                        .inversePrimary,
                  ),
                ),
              ),
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () => context.pop(),
              ),
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  context.pop();
                  context.push('/cart');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MyListTile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () => context.go('/'),
            ),
          ),
        ],
      ),
    );
  }
}
