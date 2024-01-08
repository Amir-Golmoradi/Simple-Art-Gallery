import 'package:flutter/material.dart';
import 'package:modern_shop/model/shop.dart';
import 'package:modern_shop/routes/go_router.dart';
import 'package:modern_shop/theme/lighmode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      routerConfig: AppRoute().goRouter,
    );
  }
}
