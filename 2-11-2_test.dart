void xiaoMeiSchedule() async {
  String lastTask = await Future.microtask(() {
    print('小美吃午餐');
    return '小美訂高鐵票';
  });

  await Future.microtask(() {
    if (lastTask == '小美訂高鐵票') {
      print(lastTask);
      lastTask = '小美搭車去高鐵';
    }
  });

  await Future.microtask(() {
    if (lastTask == '小美搭車去高鐵') {
      print(lastTask);
    }
  });
}

void main() {
  Future.microtask(() {
    print('小菜與小美準備對行程');
  });

  xiaoMeiSchedule();

  Future.microtask(() {
    print('小菜練習flutter');
  });

  Future.microtask(() {
    print('小菜與小美對完行程，小美生氣了');
  });
}
