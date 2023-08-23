import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_my_garden/screens/details/detail_screen.dart';

class RecommendedPlants extends StatelessWidget {
  final String title;
  final String subTitle;
  final String description;
  final String imageSrc;

  const RecommendedPlants({super.key, required this.title, required this.subTitle,
                     required this.description,required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 380,
      margin: const EdgeInsets.only(left: 0,right: 10,top: 10),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: Text(subTitle),
            ),
            InkWell(
                onTap: (){
                  Get.to(DetailScreen());
                },
                child: Image.asset('assets/images/$imageSrc')),
            Padding(
              padding: const EdgeInsets.only(left: 10),
                child: Text(description)),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){}, child: const Text('Add to Cart')),
                TextButton(onPressed: (){}, child: const Text('Buy Now'))

              ],
            )
          ],
        ),

      ),
    );
  }
}
