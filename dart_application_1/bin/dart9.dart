void main() {
  _Idol blackpink = _Idol('블랙핑크', ['지수','제니','리사','로제']);

  _Idol bts = new _Idol.fromList([['RM','뷔','진','지민'], 'BTS']);

  print(blackpink.firstMember);
  print(bts.firstMember);

  //blackpink.firstMember = '홍길동';
  //bts.firstMember = '아이언맨';

  print(blackpink.firstMember);
  print(bts.firstMember);
}

// getter/setter

//private 변수/클래스명/함수명 앞에 언더스코어(_) 를 붙임으로 써 private 속성 부여
class _Idol {
  final String name;
  final List<String> members;

  //기본 constructor
  //Idol(String name, List<String> members): this.name = name, this.members = members;
  _Idol(this.name, this.members);

  //named costructor
  _Idol.fromList(List values) : this.members = values[0], this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  //getter
  String get firstMember {
    return this.members[0];
  }

  //setter
  // final keyword의 의도에 어긋나기 때문에 안쓰는 추세
  //set firstMember(String name) {
  //  this.members[0] = name;
  //}
}