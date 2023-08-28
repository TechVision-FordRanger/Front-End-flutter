import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputRegistration extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final Icon? prefixIcon;
  final bool obscureText;
  final Function()? onTapIcon; 
  final FormFieldValidator<String>? validator;

  CustomInputRegistration({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.obscureText = false,
    this.onTapIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: prefixIcon != null
            ? IconButton(
                icon: prefixIcon!,
                onPressed: onTapIcon,
              )
            : null,
        filled: true,
        fillColor: Color(0xFF051A35),
        hintStyle: TextStyle(color: Colors.white),
        errorStyle: TextStyle(
            color: Colors.red, fontSize: 12.0),
      ),
      style: TextStyle(color: Colors.white),
      obscureText: obscureText,
    );
  }
}
