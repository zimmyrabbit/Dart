void main() {
  addNumbers(1, 1);
  addNumbers(2, 2);

  // Future
  Future<String> name = Future.value('zimmyrabbit');
  Future<int> number = Future.value(1);
  Future<bool> boolean = Future.value(true);

  // delayed
  // 1번 파라미터 - 지연할 기간 (얼마나 지연할건지) Duration
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수
  print('함수 시작');
  Future.delayed(Duration(seconds: 2),(){
    print('Delay 끝');
  });
}

// 1 + 1 = 2
// 2 + 2 = 4
void addNumbers(int number1, int number2) {
  print('계산 시작: $number1 + $number2');

  //서버 시뮬레이션
  Future.delayed(Duration(seconds: 2),() {
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
  });
  print('함수 완료');
}