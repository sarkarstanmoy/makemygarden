import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:make_my_garden/screens/details/components/body.dart';
import 'package:make_my_garden/screens/details/components/llmwidget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 50,top: 50,right: 0),
        child: Align(
          alignment: Alignment.topLeft,
          child: FloatingActionButton(
            onPressed: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Column(
        children: [
          Body(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
                child: Text("Hibiscus",style: Theme.of(context).textTheme.displaySmall,)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price: ",style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.green)),
                Text("10",style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.green)),
              ],
            ),
          ),
          const LLMWidget()
        ],
      ),
    );
  }
}
