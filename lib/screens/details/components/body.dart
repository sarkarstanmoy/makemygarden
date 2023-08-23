import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(child: Column()),
              Container(
                width: size.width * 0.75,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img_main.png')
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.50),
                        blurRadius: 70,offset: Offset(0,10))
                  ]
                ),
              )
            ],
          ),
        );

  }
}
