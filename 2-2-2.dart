//定義一個沒有參數的函數：returnInWithoutParameter()，計算一個數字(整數)並返回它
int returnInWithoutParameter() {
  int result = 1 + 20;
  return result;
}

// 定義一個帶有參數的函數returnDoubleWithParameter(int inputInp)，接受一個整數型態的參數(int inputInp)，返回一個浮點數
double returnDoubleWithParameter(
    int inputInp) //格式：回傳值的類型 函數名稱 (資料型態 函式的參數){預執行內容}
{
  double result = inputInp * 100 / 20;
  return result;
}

//定義一個帶有參數的函數returnStringWithParaemeter(String inputStr)，函數接受一個字串型態的參數(String inputStr)，將其附加到另一個字串並返回結果。
String returnStringWithParaemeter(String inputStr) {
  String result = inputStr + '是一個字串';
  return result;
}

//定義一個沒有返回值的函數{沒有內容，只有print}
//void：表示沒有值或無效值，在函式的返回值型別中使用，表明該函式不返回任何資料/值。
void withoutReturnValueJusExecute() {
  print('沒有回傳資料的函數，用void宣告此方法的回傳值型別');
}

void main() {
  print('===沒有參數的函數，取值===');
  //調用沒有參數的函數並接收返回值
  int getInValueFromFunction = returnInWithoutParameter();
  print(getInValueFromFunction);

  print('===在函數動態輸入數字(inputInp)，取值===');
  //調用帶有參數的函數並接收返回值
  double getDoubleFormFunctionParemeter1 =
      returnDoubleWithParameter(5); // 5*100 / 20 = 25 ， double再將25轉成浮點數顯示：25.0
  double getDoubleFormFunctionParemeter2 = returnDoubleWithParameter(2);
  print(getDoubleFormFunctionParemeter1);
  print(getDoubleFormFunctionParemeter2);

  print('===在函數動態輸入文字(inputStr)，取值===');
  //調用帶有參數的函數並接收返回值
  String getStringFromFuntionParameter1 = returnStringWithParaemeter('雲育鏈');
  String getStringFromFuntionParameter2 = returnStringWithParaemeter('大話AWS');
  print(getStringFromFuntionParameter1);
  print(getStringFromFuntionParameter2);

  print('====不須接收回傳值，調度函數====');
  //調用沒有返回值的函數
  withoutReturnValueJusExecute();
}
