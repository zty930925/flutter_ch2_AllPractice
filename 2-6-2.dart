//匯入模組，使json string與Map可進行轉換
import 'dart:convert';

void main() {
  //使用dynamic，鍵與值可相容多種類型的資料型態(比較：Map所容納的鍵與值資料型態較一致，相容性不高)
  Map<String, dynamic> dynamicMap = {"name": "cathy", "age": 19};
  print(dynamicMap['name'].runtimeType); //印出「鍵值的資料型態」出來看看
  print(dynamicMap['age'].runtimeType); //印出「鍵值的資料型態」出來看看

//將符合json object格式的字串，透過convert套件的jsonDecode方式，轉化成Map<String , dynamic>
//創建一個符合json object格式的字串，名為jsonObjectString，而後進行Map相關資料操作
  String jsonObjectString = """{"name" : "張庭語" , "age" : "20"}""";
  Map<String, dynamic> fromjsonObjectStrToDartMap =
      jsonDecode(jsonObjectString);
  print(fromjsonObjectStrToDartMap['name']); //印出「鍵值」出來看看
  print(fromjsonObjectStrToDartMap['age']); //印出「鍵值」出來看看

  //先新增Map內容，再透過convest模組中的jsonEcode方式轉化為符合json格式的字串
  fromjsonObjectStrToDartMap['sex'] = 'female';
  String fromDartMapTojsonObjectString = jsonEncode(fromjsonObjectStrToDartMap);
  print(fromDartMapTojsonObjectString);
  print(fromDartMapTojsonObjectString.runtimeType);
}
