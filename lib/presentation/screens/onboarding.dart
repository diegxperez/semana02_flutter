import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semana02_tarea/presentation/screens/home_page.dart';
import 'package:semana02_tarea/presentation/util/custom_icon_button.dart';
import 'package:semana02_tarea/presentation/util/custom_text_button.dart';
import 'package:semana02_tarea/presentation/widgets/custom_background_image.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  final Color buttonBackgroundColor = Color(0xFFD4D4D4).withValues(alpha: 0.1);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CustomBackgroundImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: BoxDecoration(
                      color: buttonBackgroundColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                    ),
                    child: const Text(
                      '3/3',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Discover Your Next\nAdventure',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      letterSpacing: -0.02,
                      height: 36 / 32),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Plan trips, explore destinations, and book\nunforgettable experiences.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    letterSpacing: 0,
                    height: 1.1,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      buttonBackgroundColor: buttonBackgroundColor,
                      imagePath: 'lib/assets/icons/left-arrow.png',
                      showBorder: true,
                      onPressed: () async {
                        final result = await showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title:
                                const Text('¿Quieres abandonar la aplicacion?'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('No'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Si'),
                              ),
                            ],
                          ),
                        );
                        if (result == true) {
                          SystemNavigator.pop();
                        }
                      },
                    ),
                    CustomTextButton(
                      text: 'Get Started',
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      HomePage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin = 0.0;
                                const end = 1.0;
                                final tween = Tween(begin: begin, end: end);
                                final curvedAnimation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.easeInBack,
                                );

                                return FadeTransition(
                                    opacity: tween.animate(curvedAnimation),
                                    child: child);
                              },
                              transitionDuration:
                                  const Duration(milliseconds: 1200)),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
