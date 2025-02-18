import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:semana02_tarea/presentation/screens/details_page.dart';
import 'package:semana02_tarea/presentation/screens/onboarding.dart';
import 'package:semana02_tarea/presentation/screens/home_page.dart';
// import 'package:semana02_tarea/presentation/screens/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/HomePage': (context) => const HomePage(),
          '/DetailsPage': (context) => const DetailsPage(),
        },
        theme: ThemeData(
          textTheme: GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
        ),
        debugShowCheckedModeBanner: false,
        home: Onboarding());
  }
}
