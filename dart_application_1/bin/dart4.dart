void main() {
  //if
  int num1 = 3;

  if(num1 % 3 == 0) {
    print('나머지 0');
  } else if (num1 % 3 == 1) {
    print('나머지 1');
  } else {
    print('나머지 2');
  }

  //switch
  switch(num1 % 3) {
    case 0:
      print('나머지 0');
      break;
    case 1:
      print('나머지 1');
      break;
    default:
      print('나머지 2');
      break;
  }

  //loop
  // for
  for(int i=0; i<10; i++) {
    print(i);
  }

  int total = 0;
  List<int> numlist = [1,2,3,4,5,6];
  for(int i=0; i<numlist.length; i++) {
    total += numlist[i];
  }
  print(total);

  total = 0;
  for(int number in numlist) {
    total += number;
  }
  print(total);

  // while
  total = 0;
  while(total < 10) {
    total += 1;

    if(total == 5) {
      break;
    }
  }
  print(total);

  total = 0;
  do {
    total += 1;
  } while(total < 10);
  print(total);
} 