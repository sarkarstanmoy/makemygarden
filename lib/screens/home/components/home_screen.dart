import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_my_garden/screens/home/components/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar() ,
      body: const Body(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {}

      ),
      actions: [
        IconButton(onPressed: (){
          Get.changeTheme(Get.isDarkMode? ThemeData.light(useMaterial3: true).copyWith(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade400),
              appBarTheme: const AppBarTheme(backgroundColor:Colors.green)

          ): ThemeData.dark(useMaterial3: true));
        }, icon: const Icon(Icons.change_circle))
      ],
    );
  }
}
