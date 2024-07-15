void main() {
  print('小菜與小美準備對行程');

  //小美的行程
  Future.microtask(() {
    return '吃午餐';
  }).then((lastTaskEatLunch) {
    //印出吃午餐
    print(lastTaskEatLunch);
    return '訂高鐵票';
  }).then((lastTakeHighRoadWay) {
    //印出訂高鐵票
    print(lastTakeHighRoadWay);
    return '搭車去高鐵';
  }).then((lastTakeTaxi) {
    //印出搭車去高鐵
    print(lastTakeTaxi);
  });

  //小菜的行程
  Future.microtask(() {
    print('練習flutter');
  });

  print('小菜與小美對完行程後，小美生氣了');
}
