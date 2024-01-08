import 'package:go_router/go_router.dart';
import 'package:modern_shop/pages/cart/cart_page.dart';
import 'package:modern_shop/pages/intro/intro_page.dart';
import 'package:modern_shop/pages/shop/shop_page.dart';

class AppRoute {
  final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const IntroScreen(),
      ),
      GoRoute(
        path: '/shop',
        builder: (context, state) => const ShopPage(),
      ),
      GoRoute(
        path: '/cart',
        builder: (context, state) => const CartPage(),
      ),
    ],
  );
}
