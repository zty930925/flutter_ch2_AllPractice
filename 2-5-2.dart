void main() {
  //Map(字典:需要一對key/value來表示，且key值不可重複)，格式:Map<key型別,value型別>變數名稱 = {key1:value1 , key2:value2};
  Map<String, String> positionMap = {
    'apple': '蘋果',
    'banana': '香蕉',
    'peach': '桃子'
  };

//取出positionMap中的key作為蘋果的內容值
  print(positionMap['apple']);

//為positionMap增加一對新的鍵值
  positionMap['cat'] = '貓';
  print(positionMap['cat']);

  //要再增加鍵值
  positionMap.addAll({'cold': '冷'});
  print(positionMap);

  //實際上key可能會有很多，導致難以調度資料，故可以透過keys直接提取Map中的所有key
  //取出所有key後，逐一跑回迴圈，並打印出來
  for (String key in positionMap.keys) {
    print('positionMap的key是$key時，value為${positionMap[key]}');
  }
  ;
}

//參考文獻:https://ithelp.ithome.com.tw/articles/10319826

//Map主要功能是「資料集合」，資料內容也可以是整數、布林值等型別...
Map<String, int> exmap1 = {'key1': 1, 'key2': 2, 'key3': 3};
Map<int, int> exmap2 = {10: 1, 9: 2, 8: 3};
