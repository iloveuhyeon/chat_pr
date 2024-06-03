import 'dart:convert' as convert;
import 'package:chat_pr/apis/api.dart';
import 'package:http/http.dart' as http;

class FetchApi {
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
  Future<List<Api>> fetchApi() async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print(response.body);
      return (convert.jsonDecode(response.body) as List)
          .map((e) => Api.fromJson(e))
          .toList();
    } else {
      throw Exception("false to connect ${response.statusCode}");
    }
  }
}
