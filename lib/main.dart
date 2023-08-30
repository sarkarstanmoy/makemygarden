import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_my_garden/screens/home/components/home_screen.dart';
import 'package:make_my_garden/themes/colorscheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Make My Garden',

      theme: ThemeData(useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(),
          colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(),
          colorScheme: darkColorScheme),
      home: const HomeScreen(),
    );
  }
}

