import 'package:flutter/material.dart';
import 'package:semana02_tarea/presentation/screens/details_page.dart';
import 'package:semana02_tarea/presentation/util/custom_card.dart';

class CustomListviewCards extends StatelessWidget {
  final List<Map<String, String>> cards = const [
    {
      'imagepath': 'lib/assets/images/01_background.jpg',
      'rating': '4.8',
      'country': 'Italy',
      'city': 'Bellagio',
    },
    {
      'imagepath': 'lib/assets/images/02_background.jpg',
      'rating': '4.9',
      'country': 'Peru',
      'city': 'Cuzco',
    },
  ];

  const CustomListviewCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          return CustomCard(
            imagepath: card['imagepath']!,
            rating: card['rating']!,
            country: card['country']!,
            city: card['city']!,
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        DetailsPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
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
                    transitionDuration: const Duration(milliseconds: 1200)),
              );
            },
          );
        },
      ),
    );
  }
}
