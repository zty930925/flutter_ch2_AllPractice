//於函數後方加上async，讓dart知道執行時會利用await方法，使其可支援await語法 (一樣可使用try、catch、if else)
void xiaoMeiSchedule() async {
  //發起一個Future，讓dart將所有執行做一個異步分工
  String lastTask = await Future.microtask(() {
    return '小美吃午餐';
  });

  //判斷條件，如果lastTask為'小美吃中餐'時，印出並將'小美訂高鐵票'複寫上去
  if (lastTask == '小美吃中餐') {
    print(lastTask);
    lastTask = '小美訂高鐵票';
  }

  //同上概念
  if (lastTask == '小美訂高鐵票') {
    print(lastTask);
    lastTask = '小美搭車去高鐵';
  }

  print(lastTask);
}

void main() {
  print('小菜與小美準備對行程');
  xiaoMeiSchedule();

  Future.microtask(() {
    print('小菜練習flutter');
  });

  print('小菜與小美對完行程，小美生氣了');
}
