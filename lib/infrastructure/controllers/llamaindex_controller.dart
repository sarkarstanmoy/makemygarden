import 'package:get/get.dart';

import '../services/llamaindexprovider.dart';

class LlamaIndexController extends GetxController{
  Future<String?> fetch() async {
    var llamaIndexProvider  = LlamaIndexProvider();

    var serviceResponse = await llamaIndexProvider.getResponse("Tell me about hibiscus plant in 50 words");
    return serviceResponse;
  }
}