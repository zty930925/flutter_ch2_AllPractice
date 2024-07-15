import 'dart:convert';

//建立一個名為User的類別
class User {
  //設定該類別的屬性與特徵
  int id;
  String name;
  String username;
  String email;

  //設定此類別的核心建構子
  //特殊語法格式，意思就是用戶後續依序輸入四格相對應的參數，即可獲得一個User物件
  User(this.id, this.name, this.username, this.email);

  //於User中追加函數，該函是主要功能是將資料格式化，之後輸出時可直接調用(使用時會反映用戶的資訊)。
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

//主程式
void main() {
  //生成用戶
  User demoUser = User(1, '李秉鴻老師', 'lbh', 'server@cxcxc.io');

  //調用該User物件的資料
  print(demoUser.id);
  print(demoUser.name);
  print(demoUser.username);
  print(demoUser.email);
  demoUser.printUserInfo();
  print(demoUser.toJson());

  //準備一個json String
  String userJsonString =
      """{"id":2 , "name" : "小美" , "username" : "xiaomic" , "email" : "cloud-master@cxcxc.io"}""";
  //轉換成Dart可操作的dynamic json資料型態
  dynamic userJsonStringToDartDynamic = jsonDecode(userJsonString);

  //轉圜成User物件
  User demoUser2 = User.fromJson(userJsonStringToDartDynamic);

  //調用該User物件的資料
  print(demoUser2.id);
  print(demoUser2.name);
  print(demoUser2.username);
  print(demoUser2.email);
  demoUser2.printUserInfo();
  print(demoUser2.toJson());

  //再準備第二個json String
  String userObjectTojsonString = demoUser.toJson();
  dynamic jsonStringToDartJson = jsonDecode(userObjectTojsonString);
  User demoUser3 = User.fromJson(jsonStringToDartJson);

  //調用該User物件的資料
  print(demoUser3.id);
  print(demoUser3.name);
  print(demoUser3.username);
  print(demoUser3.email);
  demoUser3.printUserInfo();
  print(demoUser3.toJson());
}
