import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  String? Function(String?)? validator;
  CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
