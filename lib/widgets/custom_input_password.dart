import 'package:flutter/material.dart';

class CustomInputPassword extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon; // Alterado de Icon para Widget
  final bool obscureText;
  final Function()? onTapIcon;

  const CustomInputPassword({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.obscureText = false,
    this.onTapIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: suffixIcon!,
                color: Colors.white,
                disabledColor: Colors.white,
                onPressed: onTapIcon,
              )
            : null,
        filled: true,
        fillColor: const Color(0xFF051A35),
        hintStyle: const TextStyle(color: Colors.white),
      ),
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
    );
  }
}
