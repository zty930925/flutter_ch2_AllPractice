//匯入模組，使json String與Map可進行轉換
import "dart:convert";

//引入套件
import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  var response = await http.get(url);
  print(response.body);
  Map<String, dynamic> jsonObjectFormRemote = jsonDecode(response.body);
  print(jsonObjectFormRemote['phone']);

  Uri multipleItemUrl = Uri.parse('https://jsonplaceholder.typicode.com/users');
  var multipleResponses = await http.get(multipleItemUrl);
  print(multipleResponses.body);
  List<dynamic> jsonArrayFromRemote = jsonDecode(multipleResponses.body);
  print(jsonArrayFromRemote[0]);

  Uri postItemUrl =
      Uri.parse('https://jsonplaceholder.typicode.com/users/posts');
  String postRequestJsonBody =
      jsonEncode({"userId": "99", "title": "雲育鍊", "body": "程式解到半夜，累死"});
  var postResponse = await http.post(postItemUrl, body: postRequestJsonBody);
  print(postResponse.body);
}
