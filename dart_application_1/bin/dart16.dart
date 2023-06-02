void main() {
  List<String> zimmyrabbit = ['zimmy1','zimmy2','zimmy3','zimmy4'];

  final newZimmyrabbit = zimmyrabbit.map((x) {
    return 'rabbit $x';
  });

  print(zimmyrabbit);
  print(newZimmyrabbit.toList()); //Iterable -> List

  final newZimmyrabbit2 = zimmyrabbit.map((x) => 'rabbit$x');

  print(newZimmyrabbit2.toList());

  print(zimmyrabbit == zimmyrabbit); //true
  print(zimmyrabbit == newZimmyrabbit); //false
  print(newZimmyrabbit == newZimmyrabbit2); //false

  // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
  String number = '13579';

  final parsed = number.split('').map((x) => '$x.jpg').toList();
  print(parsed);


  Map<String, String> zimmyrabbit2 = {
    'zimmy1':'rabbit1'
    , 'zimmy2':'rabbi2'
    , 'zimmy3':'rabbit3'
  };

  // Map -> Map
  final result = zimmyrabbit2.map((key,value) => MapEntry('hh$key', 'bb$value'));
  print(zimmyrabbit2);
  print(result);

  // Map -> List
  final keys = zimmyrabbit2.keys.map((x) => 'qq$x').toList();
  final values = zimmyrabbit2.values.map((x) => 'vv$x').toList();
  print(keys);
  print(values);


  Set zimmyrabbit3 = {
    'zimmy1'
    , 'zimmy2'
    , 'zimmy3'
    , 'zimmy4'
  };

  final newSet = zimmyrabbit3.map((x) => '$x rabbit').toSet();
  print(newSet);
}