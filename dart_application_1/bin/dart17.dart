void main() {
  List<Map<String,String>> people = [
    {
      'name' : 'zimmy1'
      , 'group' : 'rabbit'
    }
    ,{
      'name' : 'zimmy2'
      , 'group' : 'rabbit'
    }
    ,{
      'name' : 'baby1'
      , 'group' : 'vovo1'
    }
    ,{
      'name' : 'dlwlsco'
      , 'group' : 'cowlsdl'
    }
  ];

  print(people);

  //where
  // 값을 돌리면서 true -> 유지, false -> 삭제
  final result = people.where((x) => x['group'] == 'rabbit');
  final result2 = people.where((x) => x['group'] == 'vovo1');
  print(result);
  print(result2);
}