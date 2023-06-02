void main() {
  List<String> zimmyrabbit = ['zimmy1','zimmy2','zimmy3','zimmy4','zimmy4'];
  print(zimmyrabbit);

  // List -> Map 형변환
  // key : index , value : value
  print(zimmyrabbit.asMap());

  // List -> Set 형변환
  // 중복 제거
  print(zimmyrabbit.toSet());

  // MAP -> List
  Map zimmyrabbit2 = zimmyrabbit.asMap();
  print(zimmyrabbit2.keys.toList());
  print(zimmyrabbit2.values.toList());

  //Set -> List
  Set zimmyrabbit3 = Set.from(zimmyrabbit); //List로 부터 Set을 만드는 방법
  print(zimmyrabbit3.toList());
}