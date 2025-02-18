import 'package:flutter/material.dart';
import 'package:semana02_tarea/presentation/util/custom_icon_button.dart';

class CustomCard extends StatelessWidget {
  final String rating;
  final String country;
  final String city;
  final String imagepath;
  final VoidCallback? onPressed;

  const CustomCard({
    super.key,
    required this.rating,
    required this.country,
    required this.city,
    required this.imagepath,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      padding: EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        image: DecorationImage(
          image: AssetImage(imagepath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment:rossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D4).withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: Colors.white.withValues(alpha: 0.1),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset('lib/assets/icons/Star.png'),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xFFD4D4D4).withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/assets/icons/Heart.png',
                      width: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset('lib/assets/icons/MapPin.png'),
                      ),
                      Text(
                        country,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          height: 16 / 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    city,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        height: 33 / 24,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              CustomIconButton(
                imagePath: 'lib/assets/icons/ArrowUpRight.png',
                buttonBackgroundColor: Color(0xFFFFFC33),
                onPressed: onPressed ?? () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
