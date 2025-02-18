import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String imagePath;
  final Color buttonBackgroundColor;
  final bool showBorder;

  const CustomIconButton({
    super.key,
    required this.imagePath,
    this.buttonBackgroundColor = const Color(0xFF2C2C2C),
    this.showBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(imagePath),
      style: IconButton.styleFrom(
        backgroundColor: buttonBackgroundColor,
        foregroundColor: Colors.white24,
        padding: EdgeInsets.all(12.0),
        shape: showBorder
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(
                    color: Colors.white.withValues(alpha: 0.5), width: 1.0),
              )
            : null,
      ),
    );
  }
}
