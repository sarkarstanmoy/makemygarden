import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return Row(
          children: [
            const Expanded(child: Column()),
            Container(
              width: size.width * 0.75,
              height: size.height * 0.75,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/img_main.png')
                ),

              ),
            )
          ],
        );

  }
}
