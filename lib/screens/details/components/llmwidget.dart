import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/controllers/llamaindex_controller.dart';

class LLMWidget extends StatelessWidget {
  const LLMWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LlamaIndexController());

    return FutureBuilder<String?>(
        future: controller.fetch(),
        builder: (context,AsyncSnapshot<String?> snapShot){
          if(snapShot.hasData){
            return Text(snapShot.data!);
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
