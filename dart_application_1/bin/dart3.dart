void main() {
  //LIST 
  List<String> list1 = ['zimmy1', 'zimmy2', 'zimmy3', 'zimmy4'];
  List<int> list2 = [1,2,3,4,5];

  print(list1);
  print(list2);

  //index
  print(list1[0]);

  print(list1.length);

  list1.add('zimmy5');
  print(list1);
  list1.remove('zimmy5');
  print(list1);
  print(list1.indexOf('zimmy2'));


  //MAP<key,value>
  Map<String, String> dic = {
    'Lee' : '이'
    , 'Park' : '박'
    , 'Kim' : '김'
  };
  print(dic);

  Map<String, bool> dic2 = {
    'Lee' : true
    , 'Park' : false
    , 'Kim' : true
  };
  print(dic2);

  dic2.addAll({
    'Choi' : true
  });
  print(dic2);
  print(dic2['Kim']);

  dic2['Jeong'] = false;
  print(dic2);

  dic2['Jeong'] = true;
  print(dic2);

  dic2.remove('Jeong');
  print(dic2);
  
  print(dic2.keys);
  print(dic2.values);


  //SET
  // SET <-> List
  // Set은 중복값이 들어갈 수 없음
  // List는 중복값이 들어갈 수 있음
  final Set<String> set1 = {
    'zimmy1', 'zimmy2', 'zimmy3'
  };
  print(set1);

  set1.add('zimmy1');
  print(set1);
  
  set1.remove('zimmy2');
  print(set1);

  print(set1.contains(('zimmy1')));

}