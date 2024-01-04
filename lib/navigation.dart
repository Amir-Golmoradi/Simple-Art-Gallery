import 'package:go_router/go_router.dart';
import 'package:modern_shop/ui/screen/cart/cart_screen.dart';
import 'package:modern_shop/ui/screen/home_screen.dart';
import 'package:modern_shop/ui/screen/wishlist/wishlist_screen.dart';

// import '../ui/screen/splash_screen.dart';

class AppRoute {
  final GoRouter router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   routes: [
      //     GoRoute(
      //         path: 'intro',
      //         builder: (context, state) =>
      //             const IntroScreen()),
      //   ],
      //   builder: (context, state) => const SplashScreen(),
      // ),
      // GoRoute(
      //     path: '/',
      //     builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/cart',
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: '/wishlist',
        builder: (context, state) => const WishListScreen(),
      ),
    ],
  );
}
