import 'dart:async';

void main() {
  calculate(1).listen((val) { 
    print('calculate(1) : $val');
  });

  calculate(2).listen((val) { 
    print('calculate(2) : $val');
  });

  playAllStream().listen((val) {
    print(val);
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(1);
  yield* calculate(1000);
}

Stream<int> calculate(int number) async*{
  for(int i=0; i<5; i++) {
    yield i*number;

    await Future.delayed(Duration(seconds: 1));
  }
}