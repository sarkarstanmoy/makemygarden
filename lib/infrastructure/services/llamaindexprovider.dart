
import 'package:dio/dio.dart';
class Data {
  late String response;
  Data({required this.response});
  factory Data.fromJson(Map<String,dynamic> data){
    final response = data['response'] as String;
    return Data(response: response);
  }
}

class LlamaIndexProvider  {
  final dio = Dio();
  Future<String> getResponse(String prompt) async {
    var response = await dio.get('http://10.0.2.2:8000/prompt/$prompt');
    final data = Data.fromJson(response.data);
    return data.response;
  }

}