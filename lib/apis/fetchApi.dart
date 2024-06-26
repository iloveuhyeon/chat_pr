import 'dart:convert';
import 'package:chat_pr/apis/api.dart';
import 'package:http/http.dart' as http;

class FetchApi {
  static Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
  static Future<List<Api>> fetchApi() async {
    final response = await http.get(url);
    List<Api> fetchedApis = [];
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      for (var fetchedapi in body) {
        fetchedApis.add(Api.fromJson(fetchedapi));
      }
      return fetchedApis;
    } else {
      throw Exception("연결에 실패했습니다 ${response.statusCode}");
    }
  }
}
