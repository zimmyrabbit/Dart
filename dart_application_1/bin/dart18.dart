void main() {
  List<int> numbers = [1,3,5,7,9];

  //reduce
  // return 해준 값이 다음 함수를 실행 할 때 첫번째 파라미터로 들어감
  final result = numbers.reduce((prev, next) {
    print('------------');
    print('previous : $prev');
    print('next : $next');
    print('total : ${prev+next}');

    return prev + next;
  });

  final result2 = numbers.reduce((value, element) => value+element);

  print(result);
  print(result2);

  List<String> zimmyrabbit = ['안녕하세요','저는','이진채','입니다'];
  final result3 = zimmyrabbit.reduce((value, element) => value + ' ' + element);
  print(result3);

  // ERROR
  // return 되는 값의 타입이 파라미터의 타입과 같아야 한다
  //final result4 = zimmyrabbit.reduce((value, element) => value.length + element.length);
}