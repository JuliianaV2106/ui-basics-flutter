import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hint;
  final IconData icon;
  final bool obscure;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(

      obscureText: obscure,

      decoration: InputDecoration(

        hintText: hint,

        prefixIcon: Icon(icon),

        filled: true,

        fillColor: const Color(0xffF5F7FA),

        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
        ),

        border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(15),

          borderSide: BorderSide.none,

        ),

      ),
    );
  }
}