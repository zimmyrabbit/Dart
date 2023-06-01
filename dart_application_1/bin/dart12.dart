void main() {
  Employee zimmy = Employee('zimmy');
  Employee rabbit = Employee('rabbit');

  //instance 귀속
  // instance를 만든 후 instance별로 값 변경 가능 
  zimmy.name = 'jin';
  zimmy.printNameAndBuilding();
  rabbit.printNameAndBuilding();

  //class 귀속
  // class에 다이렉트로 붙어서 값을 변경 할 수 있고 모든 instance에 적용 
  Employee.building = '동아빌딩';
  zimmy.printNameAndBuilding();
  rabbit.printNameAndBuilding();

  Employee.printBuilding();

}

class Employee {
  //static은 instance에 귀속되지 않고 class에 귀속된다.
  static String? building;
  String name;

  Employee(
    this.name
  );

  void printNameAndBuilding() {
    print('제 이름은 $name 입니다. $building 건물에서 근무하고 있습니다.');
  }

  static void printBuilding() {
    print('저는 $building 건물에서 근무중 입니다.');
  }

}