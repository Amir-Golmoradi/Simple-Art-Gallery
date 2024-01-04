import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({Key? key, required this.username})
      : super(key: key);

  final TextEditingController username;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: username,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey[700]!,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        prefixIcon: const Icon(Icons.person),
        hintText: 'Username',
        hintStyle: GoogleFonts.courierPrime(
            fontWeight: FontWeight.bold),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey[700]!,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
