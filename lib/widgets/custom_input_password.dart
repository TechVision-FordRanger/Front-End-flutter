import 'package:flutter/material.dart';

class CustomInputPassword extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final Icon? suffixIcon; // Usado para o ícone no final
  final bool obscureText;
  final Function()? onTapIcon; // Função adicional para o ícone

  const CustomInputPassword({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.suffixIcon, // Use o suffixIcon em vez de prefixIcon
    this.obscureText = false,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              10.0), // Ajuste este valor conforme necessário
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: suffixIcon!,
                color: Colors.white,
                disabledColor: Colors.white,
                onPressed: onTapIcon, // Quando o ícone é pressionado
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
