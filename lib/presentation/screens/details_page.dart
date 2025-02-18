import 'package:flutter/material.dart';
import 'package:semana02_tarea/presentation/util/custom_card.dart';
import 'package:semana02_tarea/presentation/util/custom_icon_button.dart';
import 'package:semana02_tarea/presentation/util/custom_info_card.dart';
import 'package:semana02_tarea/presentation/util/custom_text_button.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                          imagePath: 'lib/assets/icons/left-arrow.png',
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Text(
                        'Details',
                        style: TextStyle(
                            fontSize: 20,
                            height: 27 / 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      CustomIconButton(
                          imagePath: 'lib/assets/icons/DootsThreeOutline.png')
                    ],
                  ),
                  SizedBox(height: 18),
                  CustomCard(
                    imagepath: 'lib/assets/images/01_background.jpg',
                    rating: '4.8',
                    country: 'Italy',
                    city: 'Bellagio',
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          SizedBox(
                            child: Image.asset('lib/assets/images/Profile.png'),
                          ),
                          Text(
                            'By Janeeth Roe',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
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
                              '4.9',
                              style: TextStyle(
                                fontSize: 12,
                                height: 16 / 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFF2C2C2C),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            CustomInfoCard(
                                info: 'Ticket',
                                path: 'lib/assets/icons/Ticket.png'),
                            CustomInfoCard(
                                info: 'Hotel',
                                path: 'lib/assets/icons/Hotel.png'),
                            CustomInfoCard(
                                info: 'Meal',
                                path: 'lib/assets/icons/Meal.png'),
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Schedule Overview',
                          style: TextStyle(
                              height: 25 / 18,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bellagio, often called the "Pearl of Lake Como," is renowned for its stunning architecture and breathtaking landscapes. Nestled where the three branches of Lake Como meet, this charming town showcases a mix of classical Italian villas, historic churches, and picturesque cobblestone streets. The architecture in Bellagio reflects centuries of history, with elegant neoclassical and baroque influences. The iconic Villa Melzi features beautifully landscaped gardens and neoclassical design, while Villa Serbelloni offers panoramic lake views from its terraced gardens. The town’s historic center is filled with pastel-colored buildings, charming balconies, and narrow alleys that create a romantic and timeless atmosphere.',
                          style: TextStyle(
                              height: 19 / 14,
                              fontSize: 14,
                              color: Colors.white.withAlpha(400)),
                        )
                      ],
                    ),
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      CustomIconButton(
                          imagePath: 'lib/assets/icons/ChatTeardropText.png'),
                      Expanded(
                        child: CustomTextButton(
                          text: 'Book Now',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}