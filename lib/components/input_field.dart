import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isPassword;

  const CustomInputField({
    required this.label,
    required this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: AppColors.subtleText),
        hintText: label, // Use hintText instead of labelText
        hintStyle: TextStyle(color: AppColors.subtleText),
        filled: true,
        fillColor: AppColors.fieldBg,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      style: TextStyle(color: AppColors.textColor),
    );
  }
}
