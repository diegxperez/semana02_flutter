import 'package:flutter/material.dart';

class CustomInfoCard extends StatelessWidget {
  final String info;
  final String path;

  const CustomInfoCard({super.key, required this.info, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: Colors.white.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        spacing: 4,
        children: [
          Image.asset(path),
          Text(
            info,
            style: TextStyle(
              fontSize: 14,
              height: 19 / 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
