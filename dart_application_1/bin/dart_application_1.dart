import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
  print('Hello Dart');

  //variable
  var name = 'Hello';
  print(name);

  name = 'Dart';
  print(name);

  //같은 scope 내에서 같은 이름의 변수를 재 선언하는건 불가능
  //var name = 'Flutter';

  //variable Type
  //Integer
  int number1 = 1;
  print(number1);

  int number2 = 2;
  print(number2);
  
  print(number1 + number2);
  print(number1 - number2);
  print(number1 / number2);
  print(number1 * number2);
  print(number1 % number2);

  //Double
  double number3 = 2.5;
  double number4 = 0.5;
  print(number1 + number2);

  //Boolean
  bool isTrue = true;
  bool isFalse = false;

  //String
  String str = 'red';
  String str2 = 'blue';
  print(str + ' ' + str2);
  print('${str} ${str2}');
  print('$str $str2');

  //var <-> String
  // var -> 타입 추론 기능
  // String -> 문자열
  var test1 = 20;
  var test2 = 'flutter';
  print(test1.runtimeType);
  print(test2.runtimeType);

  //var <-> dynamic 
  // var -> 처음 선언된 타입에서 변경 불가
  // dynamic -> 처음 선언된 타입과 관계없이 값 변경 가능
  dynamic dyn1 = 'zimmy';
  dynamic dyn2 = 1;

  print('${test2.runtimeType} ${dyn1.runtimeType}');
}
