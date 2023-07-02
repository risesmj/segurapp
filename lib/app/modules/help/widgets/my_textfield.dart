import 'package:flutter/material.dart';
import 'package:segurapp/app/core/theme.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.label,
    this.prefixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.white,
            ),
            fillColor: ColorsTheme.whiteOpacity,
            filled: true,
            disabledBorder: _inputBorder(),
            focusedBorder: _inputBorder(),
            enabledBorder: _inputBorder(),
            border: _inputBorder(),
          ),
        ),
      ],
    );
  }

  InputBorder _inputBorder() => const OutlineInputBorder(
        borderSide: BorderSide(
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      );
}
