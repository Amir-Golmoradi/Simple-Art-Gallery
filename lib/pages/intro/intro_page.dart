import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:modern_shop/components/my_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Lottie.asset('assets/animation/splash-animation.json', height: 120),

            const SizedBox(height: 25),
            // title
            Text(
              "Minimal Shop",
              style: GoogleFonts.robotoSlab(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),

            // subtitle
            Text(
              "Premium High Quality Products",
              style: GoogleFonts.robotoSlab(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),

            //button
            MyButton(
              onTap: () {
                context.push('/shop');
              },
              child: const Icon(Icons.arrow_forward_rounded),
            )
          ],
        ),
      ),
    );
  }
}
