void main() {
  print('-------idol-------');
  Idol apink = Idol(name: 'apink', membersCounts: 5);
  apink.sayName();
  apink.sayMembersCount();

  print('-------boy group-------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print('-------girl group-------');
  GirlGroup redVelvet = GirlGroup('redVelvet', 5);
  redVelvet.sayName();
  redVelvet.sayMembersCount();
  redVelvet.sayFemale();

  print('-------Type Conparison-------');
  print(apink is Idol); //true
  print(apink is BoyGroup); //false
  print(apink is GirlGroup); //false

  print('-------Type Conparison2-------');
  print(bts is Idol); //true
  print(bts is BoyGroup); //true
  print(bts is GirlGroup); //false
}

// 상속 inheritance
// 상속을 받으면 부모클래스의 모든 속성을 자식 클래스가 부여 받는다.
class Idol {
  //이름
  String name;
  //멤버 숫자
  int membersCounts;

  Idol({
    required this.name
    , required this.membersCounts
  });

  void sayName() {
    print('저는 ${this.name} 입니다.');
  }
  void sayMembersCount() {
    print('${this.name}은 ${this.membersCounts}명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol{
  BoyGroup(String name, int membersCounts):super(name: name, membersCounts: membersCounts);

  void sayMale() {
    print('저는 남자 아이돌 입니다.');
  }
}

class GirlGroup extends Idol{
  GirlGroup(String name, int membersCounts):super(name: name, membersCounts: membersCounts);

  void sayFemale() {
    print('저는 여자 아이돌 입니다.');
  }
}