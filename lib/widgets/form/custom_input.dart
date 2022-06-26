import 'package:flutter/material.dart';
import 'package:medical_services/theme/app_theme.dart';

class CustomInput extends StatelessWidget {
  final TextInputType? keyboardType;
  final IconData icon;
  final Color iconColor;
  final String hintText;
  final Color fillColor;
  final bool isFilled;
  final bool obscureText;

  final String formField;

  final Map<String, String> formValues;

  const CustomInput({
    Key? key,
    this.keyboardType,
    required this.formField,
    required this.formValues,
    required this.icon,
    required this.iconColor,
    required this.hintText,
    required this.fillColor,
    required this.isFilled,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofocus: false,
      initialValue: '',
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: isFilled,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
              color: AppTheme.primary,
              width: 1,
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(style: BorderStyle.solid, width: 1)),
        hintText: hintText,
        prefixIcon: icon == null
            ? null
            : Icon(
                icon,
                color: iconColor,
              ),
      ),
      onChanged: (value) => formValues[formField] = value,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
