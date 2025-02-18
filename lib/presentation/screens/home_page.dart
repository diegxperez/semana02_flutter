import 'package:flutter/material.dart';
import 'package:semana02_tarea/presentation/util/custom_icon_button.dart';
import 'package:semana02_tarea/presentation/widgets/custom_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Current Location',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Row(
                    spacing: 6,
                    children: [
                      Text(
                        'Netherlands',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset('lib/assets/icons/CaretDown.png'),
                      )
                    ],
                  ),
                ]),
                CustomIconButton(
                  imagePath: 'lib/assets/icons/left-arrow.png',
                )
              ],
            ),
            SizedBox(height: 24),
            // ! VERIFICAR TEXTFIELD
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 43,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xFF2C2C2C)),
                    child: Row(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Image.asset(
                            'lib/assets/icons/Search.png',
                            scale: 1.2,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style:
                                TextStyle(color: Colors.white24, fontSize: 10),
                            decoration: InputDecoration(
                                alignLabelWithHint: true,
                                hintText: 'Search destination...',
                                hintStyle: TextStyle(color: Colors.grey[700]),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                CustomIconButton(imagePath: 'lib/assets/icons/Search.png')
              ],
            ),
            SizedBox(
              height: 16,
            ),
            CustomListView(),
            SizedBox(
              height: 36,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Destination',
                  style:
                      TextStyle(fontSize: 20, color: Colors.white, height: 0.27),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 12, color: Color(0xFFFFFC33), height: 0.16),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
