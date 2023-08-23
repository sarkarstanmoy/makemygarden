import 'package:flutter/material.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context).flipped;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: size.height * 0.2,
              decoration:  BoxDecoration(
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(20))
              ),
            ),
            Positioned(child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0,40,8.0,0),
              child: SearchBar(elevation: MaterialStateProperty.all(20),
                leading: Icon(Icons.search),hintText: 'Type Keyword',),
            ))
          ],
        )
      ],
    );
  }
}
