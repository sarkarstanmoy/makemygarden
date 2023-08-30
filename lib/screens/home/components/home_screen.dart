import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_my_garden/screens/home/components/body.dart';

import '../../../themes/colorscheme.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  ThemeData _buildDarkTheme() {
    var baseTheme = ThemeData(brightness: Brightness.dark);

    return baseTheme.copyWith(
        colorScheme: darkColorScheme,
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
    );
  }

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
            colorScheme: lightColorScheme,
              textTheme: GoogleFonts.poppinsTextTheme(),
              appBarTheme: const AppBarTheme(backgroundColor:Colors.green)

          ): _buildDarkTheme());
        }, icon: const Icon(Icons.change_circle))
      ],
    );
  }
}
