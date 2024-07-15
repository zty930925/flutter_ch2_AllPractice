void main() {
  int peopleAmount = 51; //將數值51指定給peopleAmount變數名稱

  if (peopleAmount > 50) {
    //大於：>
    print('嫁給你');
  } else {
    print('去吃吃到飽');
  }

  int budget = 3000;
  if (budget > 10000) {
    print('我們現在就去公證結婚');
  } else if (budget == 10000) {
    //等於：==
    print('雖然有點勉強，但還可以');
  } else {
    print('我爸媽說，你還年輕，還可以多衝幾年事業');
  }

  String yourName = '小菜'; //將字串'小菜'指定給yourName變數名稱
  if (yourName != '小菜') {
    //不等於：!=
    print('我終生不嫁');
  } else {
    print('我要嫁了');
  }
}

//多層條件邏輯判斷：if、else if、else
//參考文獻：https://www.darttutorial.org/dart-tutorial/dart-if-else-if/



