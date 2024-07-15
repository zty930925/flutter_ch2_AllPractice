//void main()定義程式的入口點
void main() {
  String name = '小菜'; //String：「文字」型別
  String companyname = '雲育鏈';
  int age = 24; //int 與 double ：「數字」型別
  print(name);
  print(name + '在' + companyname);
  print(age.toString()); //toString()：將age數字類型轉換為字串，以便下方執行輸出
  print('有一個年紀' +
      age.toString() +
      '歲的男孩在' +
      companyname +
      '他名字叫做' +
      name); //字串'' 黏用 + 號
}
