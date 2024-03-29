import 'package:flutter/material.dart';




class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({super.key, this.labelText, this.prefixIcon, required this.controller, required this.isPassword, required this.color, this.suffixIcon, this.validator, required this.readOnly, required this.style, this.labelStyle,  this.onTap});
  final String ? labelText;
  final Widget ? prefixIcon;
  final Widget ? suffixIcon;
  final TextEditingController controller;
  final bool isPassword;
  final Color color;
  final String? Function(String?)? validator;
  final bool  readOnly;
  final TextStyle style;
  final TextStyle ? labelStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      style: style,
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: labelStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: color),
        ),
      ),
    );
  }
}