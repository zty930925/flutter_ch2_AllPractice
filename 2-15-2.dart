import "dart:convert";
import 'package:http.dart' as http;

class User {
  //設定該類別的屬性與特徵
  int id;
  String name;
  String username;
  String email;

  //設定此類別的核心建構子
  //特殊語法格式，意思就是用戶後續依序輸入四格相對應的行爺參數，即可獲得一個User物件
  User(this.id, this.name, this.username, this.email);

//於User中追加函數，使用時會反映用戶的資訊
  void printUserInfo() {
    print("用戶名稱:$name , 用戶帳號:$username , 用戶id:$id , 用戶信箱:$email");
  }

  //factory多重建構子 ; 格式:factory類別名.方法名(參數型別 參數名){方法邏輯 , 回傳該類別物件}
  //類別的專屬方法，不需要先生成物件再由物件觸發，可直接以類別調度方法，但是需要回傳該類別的物件

  factory User.fromJson(dynamic userJson) {
    int extractUserId = userJson['id'];
    String extractName = userJson['name'];
    String extractUserName = userJson['username'];
    String extractEmail = userJson['email'];
    return User(extractUserId, extractName, extractUserName, extractEmail);
  }

  String toJson() {
    dynamic instanceMap = {
      'id': id,
      'name': name,
      "username": username,
      'email': email
    };
    return jsonEncode(instanceMap);
  }
}

Future<List<User>> getRemoteSystemUserData() async {
  Uri multipleItemUrl = Uri.parse("https://jsonplaceholder.typicode.com/users");
  http.Response remoteSystemResponses = await http.get(multipleItemUrl);

  List<dynamic> jsonArrayFromRemote = jsonDecode(remoteSystemResponses.body);
  List<User> userArray = jsonArrayFromRemote
      .map((dynamicUserJson) => User.fromJson(dynamicUserJson))
      .toList();
  return userArray;
}

//主程序
void main() async {
  List<User> userArray = await getRemoteSystemUserData();
  print(userArray[0].toJson());

  Uri remoteSystemUrl = Uri.parse("https://jsonplaceholder.typicode.com/users");
  String postData = userArray[0].toJson();
  http.Response postResponses =
      await http.post(remoteSystemUrl, body: postData);
  print(postResponses.body);
}
