void main() {
  Lecture<String,String> l1 = Lecture('zimmy', 'rabbit');
  l1.printIdType();

  Lecture<int,String> l2 = Lecture(2, 'rabbit');
  l2.printIdType();
}

// generic - 타입을 외부에서 받을때 사용
class Lecture<T, X> {
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}