void main() {
  Operation operation = add;
  int result1 = operation(10,20,30);
  print(result1);

  operation = min;
  int result2 = operation(10,20,30);
  print(result2);

  int result3 = calculate(10, 20, 30, add);
  print(result3);

  int result4 = calculate(10, 20, 39, min);
  print(result4);
}

typedef Operation = int Function(int x, int y, int z);

//더하기
int add(int x, int y, int z) => x + y + z;
//빼기
int min(int x, int y, int z) => x - y - z;

int calculate(int x, int y, int z, Operation operation) {
  return operation(x,y,z);
}