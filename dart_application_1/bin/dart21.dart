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

  // Map -> class Instance 
  final parsePeople = people.map((x) => Person(name:x['name']!, group:x['group']!)).toList();
  print(parsePeople);

  for(Person person in parsePeople) {
    print(person.name);
    print(person.group);
  }

  final bts = parsePeople.where((x) => x.group == 'rabbit');
  print(bts);

  final bts2 = people.map((x) => Person(name:x['name']!, group:x['group']!)).where((x) => x.group == 'rabbit');
  print(bts2);

  final bts3 = people.map((x) => Person(name:x['name']!, group:x['group']!))
                      .where((x) => x.group == 'rabbit')
                      .fold<int>(0, (previousValue, element) => previousValue + element.name.length);
  print(bts3);
}

class Person {
  final String name;
  final String group;

  Person({
    required this.name
    ,required this.group
  });

  @override
  String toString() {
    return 'Person(name:$name, group:$group)';
  }
}