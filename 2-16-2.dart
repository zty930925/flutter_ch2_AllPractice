//建立一個名為Drinking的抽象資料型態
abstract class Drinking {
  //設定基本屬性，調核心建構子再進行定義
  String origin;
  String branding;
  int price;
  //建立核心建構子，將基本屬性加以定義
  Drinking(this.origin, this.branding, this.price);

  //建立一個函數，主要功能是定義飲料的須知
  void mustKnow() {
    print('產品若瑕疵，可聯絡消基會');
  }

  //定義飲料的指示，內容尚未編輯
  void drinkingInstruction();
}

//繼承

//建構子Coffee(子)繼承於Drinking(父)，extends建立Coffee、Drinking的從屬關係。
class Coffee extends Drinking {
  //咖啡類別的建構子(子)。
  //當用戶輸入完成，建構子Coffee(子)會將資料將付給Drinking(父)
  //因為Drinking是一個抽象資料型態的資料，因此需要Coffee來具體實現Drinking的內容。
  Coffee(String origin, String branding, int price)
      : super(origin, branding, price);

  //父層沒有咖啡的須知，因此於此撰寫
  @override
  void drinkingInstruction() {
    print('建議半夜十二點之後，不要喝咖啡，避免無法入睡');
  }
}

class Tea extends Drinking {
  Tea(String origin, String branding, int price)
      : super(origin, branding, price);

  @override
  void drinkingInstruction() {
    print('可熱沖或冷泡');
  }

  @override
  void mustKnow() {
    print('喝好茶，可醒神延年益壽');
  }
}

//建立物件，以驗證程式對錯
void main() {
  //建立物件，雲育鍊咖啡，並輸入產地、品牌、價格
  Drinking cxcxcCoffee = Coffee('中壢', '雲育鍊', 20);
  //印出品牌
  print(cxcxcCoffee.branding);
  //印出指示
  cxcxcCoffee.drinkingInstruction();
  //印出須知
  cxcxcCoffee.mustKnow();

  Drinking wulongTea = Tea('南投', '回甘', 700);
  print(wulongTea.branding);
  wulongTea.drinkingInstruction();
  wulongTea.mustKnow();
}
