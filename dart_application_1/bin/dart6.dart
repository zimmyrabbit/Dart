void main() {
  //addNumbers(1, 2, 3);
  //addNumbers(2);
  int add1 = addNumbers(30, y: 10, z: 20);
  int add2 = addNumbers(30, y: 10);
  print(add1 + add2);

  int add3 = addnum(10, y: 15, z:30);
  print(add3);
}

// 세개의 숫자 (x,y,z)를 더하고 짝수인지 홀수인지 알려주는 함수
//addNumbers(int x, [int y=0, int z=0]) {
int addNumbers(int x,{
  required int y
  , int z=0
}) {
  //positional Parameter - 순서가 중요한 파라미터
  //optional Parameter - 있어도 되고 없어도 되는 파라미터 [ ] 로 표시
  //named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다)

  print('addNumbers 실행');
  print('x : $x');
  print('y : $y');
  print('z : $z');

  int add = x + y + z;
  if(add % 2 == 0) {
    print('짝수');
  } else {
    print('홀수');
  }

  return add;
}

//arrow function
int addnum(int x, {
  required int y
  ,int z = 30
}) => x + y + z;