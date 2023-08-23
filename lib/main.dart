import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_my_garden/screens/details/detail_screen.dart';
import 'package:make_my_garden/screens/home/components/home_screen.dart';

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
      // theme: ThemeData(
      //   textTheme: Theme.of(context).textTheme.apply(bodyColor: const Color(0xFF3C4046)),
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade400),
      //   useMaterial3: true,
      //   appBarTheme: const AppBarTheme(backgroundColor:Colors.green),
      //   cardTheme: const CardTheme(color: Colors.white)
      // ),
      theme: ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade400),
          appBarTheme: const AppBarTheme(backgroundColor:Colors.green)
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade400),
      ),
      home: const HomeScreen(),
    );
  }
}

