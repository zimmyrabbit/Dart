void main() {
  //nullable
  //non-nullable

  String name = 'zimmy';
  print(name);
  //name = null;

  String? name2 = 'zimmy'; // -> nullable (?)
  name2 = null;

  String? name3 = 'zimmy';
  name3 = null;
  //print(name3!); -> non-nullalble (!)

  print('-------------------------');

  //final, const
  // final <-> const
  // final - 빌드타임의 값을 알고있지 않아도 됨
  // const - 빌드타임의 값을 알고있어야 됨
  //final (var) test = 'zimmy';
  //const (var) test = 'zimmy';
  final String test = 'zimmy';
  const String test2 = 'zimmy';
  final test3 = 'rabbit';

  print('-------------------------');

  //Datetime
  // now() -> 어플리케이션 실행 시간이 아닌 해당 코드가 실행되는 현재 시간
  DateTime now = DateTime.now();
  print(now);
  DateTime now2 = DateTime.now();
  print(now2);

  final DateTime now3 = DateTime.now();
  //const DateTime now4 = DateTime.now();   ERROR
  // -> 빌드가 되는 시점에 해당 코드의 값을 알 수 없기 때문

  print('-------------------------');

  int num = 2;
  print(num);
  print(num+2);
  num++;
  print(num);
  num--;
  print(num);

  print('-------------------------');

  double num2 = 4.0;
  print(num2);
  num2 += 1;
  print(num2);
  num2 -= 1;
  print(num2);

  print('-------------------------');

  double? num3 = 4.0;
  print(num3);
  num3 = 2.0;
  print(num3);
  num3 = null;
  print(num3);
  num3 ??= 3.0; // num3가 null일때 우측 값으로 치환 (??=)
  print(num3);

  print('-------------------------');

  int num4 = 1;
  int num5 = 2;
  print(num4 > num5);
  print(num4 < num5);

  print('-------------------------');

  int num6 = 1;
  print(num6 is int);
  print(num6 is String);

  print(num6 is! int);
  print(num6 is! String);

  print('-------------------------');

  bool result = 12 > 10 && 1 > 0;
  print(result);
  bool result2 = 12 > 10 && 1 < 0;
  print(result2);
  bool result3 = 12 > 10 || 1 < 0;
  print(result3);
}