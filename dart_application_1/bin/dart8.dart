void main() {
  Idol blackpink = const Idol('블랙핑크', ['지수','제니','리사','로제']);
  Idol blackpink2 = const Idol('블랙핑크', ['지수','제니','리사','로제']);

  Idol blackpink3 = Idol('블랙핑크', ['지수','제니','리사','로제']);
  Idol blackpink4 = Idol('블랙핑크', ['지수','제니','리사','로제']);

  print(blackpink == blackpink2); //true
  print(blackpink3 == blackpink4); //false 

  print(blackpink.name);
  print(blackpink.members);
  blackpink.sayHello();
  blackpink.introduce();

  Idol bts = new Idol('BTS', ['RM','뷔','진','지민']);
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();  

  Idol bts2 = new Idol.fromList([['RM','뷔','진','지민'], 'BTS']);
  print(bts2.name);
  print(bts2.members);
  bts2.sayHello();
  bts2.introduce();  
}

//Idol Class
// name (이름) - 변수
// members (멤버) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수

//constructor (생성자)
class Idol {
  //immutable programming (final)
  final String name;
  final List<String> members;

  //기본 constructor
  //Idol(String name, List<String> members): this.name = name, this.members = members;
  const Idol(this.name, this.members);

  //named costructor
  Idol.fromList(List values) : this.members = values[0], this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}