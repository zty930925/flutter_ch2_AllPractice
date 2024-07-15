//匯入模組，使json string與Map可進行轉換
import "dart:convert";

void main() {
//創建json array的字串，並指定到StringOfjsonArray
  String StringOfjsonArray = """[1, 2, 3, 4, 5, 6]""";
//透過jsonDecode方法，轉譯成dart可操作的List格式
  List<dynamic> jsonArray = jsonDecode(StringOfjsonArray);
//使用List可接受的迴圈方式，逐一宣告List內的資料型別
  for (int element in jsonArray) {
    print(element);
  }

  //增加資料(元素)
  jsonArray.add(7);
  //再次轉譯成json string
  String jsonArrayToString = jsonEncode(jsonArray);
  print(jsonArrayToString);

  //建立一個名為jsonArrayStingOfJsonObject物件，裡面填充json object的json array string字串
  String jsonArrayStingOfJsonObject =
      """[{"name" : "張庭語" , "age" : "20"} , {"name" : "雲育鍊" , "age" : "18"} , {"name" : "可可亞" , "age" : "21"}]""";
  //透過jsonDecode方法，轉譯成dart可操作的List格式
  List<dynamic> jsonArrayOfJsonObject = jsonDecode(jsonArrayStingOfJsonObject);
  //調度List內其中一個json object，並提取name欄位
  //前者的[0]是指從index0開始訪問;後者[name]用來訪問'name'鍵的值，因此輸出「張庭語」。
  print(jsonArrayOfJsonObject[0]['name']);
  //使用Dart可接受的迴圈方式操作List，提取時宣告json object的資料型態為Map
  for (Map<String, dynamic> jsonobject in jsonArrayOfJsonObject) {
    //逐一印出資料內容
    print(jsonobject);
  }
  //添加一個Map<String , dynamic>進入該List
  jsonArrayOfJsonObject.add({"name": "flutter課程", "age": "23"});
  //翻譯成json string
  String jsonArrayOfJsonObjectToString = jsonEncode(jsonArrayOfJsonObject);
  print(jsonArrayOfJsonObjectToString);
}
