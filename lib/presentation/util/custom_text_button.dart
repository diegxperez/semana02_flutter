import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double horizontal;
  final double vertical;
  final String text;

  const CustomTextButton({
    super.key,
    required this.text,
    this.backgroundColor = const Color(0xFFFFFC33),
    this.foregroundColor = const Color(0xFF010101),
    this.horizontal = 16.0,
    this.vertical = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        textStyle: const TextStyle(
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Text(text),
    );
  }
}
