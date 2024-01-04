import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({Key? key, required this.password})
      : super(key: key);

  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: password,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey[700]!,
            ),
            borderRadius: BorderRadius.circular(16)),
        hintText: 'Password',
        prefixIcon: const Icon(Icons.lock),
        hintStyle: GoogleFonts.courierPrime(
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Colors.red[700]!,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
