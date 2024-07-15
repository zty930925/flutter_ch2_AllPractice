void main() {
  //建立清單，格式：List<資料型態> 清單名稱 = [資料項目1(index:0) ,資料項目2(index:1) , 資料項目3(index:2)];
  List<String> menList = ['王小明', '李小菜', '雲育鍊'];

  print(
      '=============for(迴圈) loop(意：循環，實際上並不會將loop編入程式中)數字序列號版本================');

  //for迴圈:處理重複性任務
  //從index0開始打印，每執行完一次index就+1(index++)，直到印完所有list資料項目(menList.length)
  //for格式(初始值 ; 終止條件 ; 每執行完一次迴圈後index變量值調整方式)
  for (int index = 0; index < menList.length; index++) {
    print(menList[index]);
  }

  print('=============for loop 元素遍歷版================');

  //在menList中逐一取出資料型別為字串的men
  for (String men in menList) {
    print(men + '送給小美的早餐');
  }
}

//參考文獻：https://dart.dev/language/loops#for-loops