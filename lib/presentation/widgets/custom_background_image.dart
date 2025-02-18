import 'package:flutter/material.dart';

class CustomBackgroundImage extends StatelessWidget {
  const CustomBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withValues(alpha: 0.43),
            Colors.black,
            Colors.black,
          ],
          stops: [
            0.0,
            0.2,
            0.69,
            1.0
          ]).createShader(bounds),
      blendMode: BlendMode.srcOver,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('lib/assets/images/onboarding_withoutshader1.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.multiply),
          ),
        ),
      ),
    );
  }
}
