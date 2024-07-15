//分工機制(異步)，當main主程式，執行到Future時，就等於分配到任務了
void main() {
  print('會議招開，這是一場重要會議');

  //建一個Future物件，該物件在延遲一秒後執行打印
  Future.delayed(Duration(seconds: 1), () {
    print('收到下台中的任務，開始準備行囊');
  });

  //microtask用於處理短期內完成的快速任務
  Future.microtask(() {
    print("練習flutter應用");
  });
  print("會議結束");
}

//Future、microtask是Dart的異步特性。