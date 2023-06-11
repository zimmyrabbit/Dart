void main() {
  final number = 123;

  print(number.toString());
  print(number.toString().runtimeType);
  print(number.toString().split('').map((x) => '$x.jpg').toList());

  final numbers = [
    123,
    456,
    789,
  ];

  print(
    numbers
      .map((x) => x.toString().split('')
        .map((y) => '$y.jpg')
        .toList())
      .toList()
  );
}