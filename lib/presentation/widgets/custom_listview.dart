import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final List<String> path = const [
    'lib/assets/images/Asia.png',
    'lib/assets/images/Europe.png',
    'lib/assets/images/America.png',
    'lib/assets/images/Africa.png',
  ];
  final List<String> continents = const [
    'Asia',
    'Europa',
    'America',
    'Africa',
  ];

  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: continents.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFF2C2C2C),
              ),
              padding: EdgeInsets.only(left: 6, right: 12, top: 6, bottom: 6),
              margin: const EdgeInsets.only(right: 8),
              child: Row(
                spacing: 6,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(path[index]),
                  ),
                  Text(
                    continents[index],
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
