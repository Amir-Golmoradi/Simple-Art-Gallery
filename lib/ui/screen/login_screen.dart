import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../components/button/login_button.dart';
import '../../components/fields/password_field.dart';
import '../../components/fields/username_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: FadeInDown(
        animate: true,
        duration: const Duration(seconds: 2),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Modern Shop 🛒',
                style: GoogleFonts.courierPrime(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: Adaptive.cm(3.sp)),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Adaptive.w(10.sp)),
                child: UserNameField(username: username),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Adaptive.w(10.sp),
                    vertical: Adaptive.mm(3)),
                child: PasswordField(password: password),
              ),
              SizedBox(height: Adaptive.cm(2.sp)),
              const LoginButton()
            ],
          ),
        ),
      ),
    );
  }
}
