//情境：做一個用戶系統，裡面存放用戶資料...
//建立一個名為User的類別，class中包裹著該類別的屬性與特徵
class User {
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
}

//建立一個User物件
void main() {
  //生成用戶
  User demoUser = User(1, '李秉鴻老師', 'lbh', 'server@cxcxc.io');

  //調用該User物件的資料
  print(demoUser.id);
  print(demoUser.name);
  print(demoUser.username);
  print(demoUser.email);
  demoUser.printUserInfo();
}
