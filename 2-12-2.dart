//匯入模組工具
import 'dart:convert';
//引入套件
import 'package:http/http.dart' as http;

//帶有async方法，其回傳值型態仍要加上一層future，void除外
Future<List<dynamic>> getRemoteSystemData(String remoteUri) async {
  //函數宣告，未來會傳還一個list<dynamic>，函數名稱是getRemoteSystemData
  //另外帶有一參數叫remoteUri
  //生成Uri物件
  Uri multipleItemUrl = Uri.parse(remoteUri);
  //使用async後，可透過await等待函數要使用的future完成執行後，取得內容
  //使用http模組的get方法調度，並透過await，從future取值後，型態宣告成http.Response
  http.Response multipleResponses = await http.get(multipleItemUrl);
  //利用jsonDecode將遠端json字串轉換成dart可操作的格式(轉換可操做的dart list)
  List<dynamic> jsonArrayFromRemote = jsonDecode(multipleResponses.bady);
  return jsonArrayFromRemote;
}

void main() async {
  List<dynamic> jsonArrrayResponse =
      await getRemoteSystemData('http://jsonplaceholder.typicode.com/users');

  //調度list中的資料，調度出指定位置的json object並提取出欄位。
  print(jsonArrrayResponse[0]);
  print(jsonArrrayResponse[0]['username']);
  print(jsonArrrayResponse[0]['email']);
  print(jsonArrrayResponse[0]['family']);
}
