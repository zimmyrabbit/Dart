void main() {
  List<int> numbers = [1,3,5,7,9];

  // fold <-> reduce
  // 첫번째 값
  // reduce -> 파라미터의 첫번째 값
  // fold -> 설정한 첫번 째 값

  // return 값 타입
  // reduce -> 파라미터의 타입과 return 타입이 같아야한다
  // fold -> fold함수에 타입을 명시해줌으로써 해당 타입으로 리턴
  final sum = numbers.fold<int>(0, (previousValue, element) {
    print('------------');
    print('previous : $previousValue');
    print('next : $element');
    print('total : ${previousValue+element}');

    return previousValue + element;
  });

  //final sum = numbers.fold<int>(0, (previousValue, element) => previousValue + element);

  print(sum);

  List<String> zimmyrabbit = ['안녕하세요','저는','이진채','입니다'];
  final sentence = zimmyrabbit.fold<String>('',(value, element) => value + element);
  final length = zimmyrabbit.fold<int>(0,(value, element) => value + element.length);
  print(sentence);
  print(length);
}