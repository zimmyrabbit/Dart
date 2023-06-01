void main() {
  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());
}

//method - function (class내부에 있는 함수)
// override - 덮어쓰다(우선시하다)
class TimesTwo{
  final int number;

  TimesTwo(
    this.number
  );

  //method
  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(int number):super(number);

  @override
  int calculate() {
    //return super.number * 4;
    return super.calculate() * 2;
  }
}