void main() {
  BoyGroup bg = BoyGroup('bts');
  GirlGroup gg = GirlGroup('레드벨벳');

  bg.sayName();
  gg.sayName();

  print(bg is IdolInterface); //true
  print(bg is BoyGroup); //true
  print(bg is GirlGroup); //false
}

//interface
abstract class IdolInterface{
  String name;
  IdolInterface(this.name);

  void sayName();
}

class BoyGroup implements IdolInterface {
  String name;
  BoyGroup(this.name);
  
  void sayName(){
    print('제 이름은 $name 입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;
  GirlGroup(this.name);
  
  void sayName(){
    print('제 이름은 $name 입니다.');
  }
}