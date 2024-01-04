import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop('/');
          },
          icon: Icon(Icons.arrow_back, size: 23.sp),
        ),
      ),
      body: const Center(
        child: Text('Cart Screen'),
      ),
    );
  }
}
