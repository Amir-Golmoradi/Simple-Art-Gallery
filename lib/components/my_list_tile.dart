import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.text,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: Icon(icon, color: Colors.grey[600]),
        title: Text(
          text,
          style: GoogleFonts.robotoSlab(
            color: Colors.grey[700],
            fontWeight: FontWeight.w700,
            fontSize: 19,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
