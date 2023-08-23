import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:make_my_garden/screens/home/components/header_with_searchBar.dart';
import 'package:make_my_garden/screens/home/components/recommended_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const HeaderWithSearchBar(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 24,
                        child: Stack(
                          children: [
                            Text('Recommended',style: TextStyle(fontSize: 20),)
                          ],
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, child: const Text("More"))
                    ],
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecommendedPlants(title: 'Plant1', subTitle: 'This contains vitamins',
                          description: 'This plant is originated from India',
                          imageSrc: 'image_1.png',),
                        RecommendedPlants(title: 'Plant2', subTitle: 'This contains potassium',
                          description: 'This plant is originated from Brazil',
                          imageSrc: 'image_2.png',),
                        RecommendedPlants(title: 'Plant3', subTitle: 'This contains minerals',
                          description: 'This plant is originated from Russia',
                          imageSrc: 'image_3.png',)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 24,
                          child: Stack(
                            children: [
                              Text('Featured Plants',style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ),
                        ElevatedButton(onPressed: (){}, child: const Text("More"))
                      ],
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecommendedPlants(title: 'Plant1', subTitle: 'This contains vitamins',
                          description: 'This plant is originated from India',
                          imageSrc: 'image_1.png',),
                        RecommendedPlants(title: 'Plant2', subTitle: 'This contains potassium',
                          description: 'This plant is originated from Brazil',
                          imageSrc: 'image_2.png',),
                        RecommendedPlants(title: 'Plant3', subTitle: 'This contains minerals',
                          description: 'This plant is originated from Russia',
                          imageSrc: 'image_3.png',)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
