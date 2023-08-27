import 'package:flutter/material.dart';

class CustomInputCadastro extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final Icon? prefixIcon;
  final bool obscureText;
  final Function()? onTapIcon; // Função adicional para o ícone

  const CustomInputCadastro({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
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
        prefixIcon: prefixIcon != null
            ? IconButton(
                icon: prefixIcon!,
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
