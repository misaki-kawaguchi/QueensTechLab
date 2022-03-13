import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
    );
  }
}