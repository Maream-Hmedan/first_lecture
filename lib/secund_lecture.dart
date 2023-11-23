void main() {
  int number1 = 25; // declertion + init
  int number2 = -25; // declertion + init
  if (number1 > number2) {
    print("$number1 is greater than $number2");
  } else {
    print("$number2 is greater than $number1"); //interpolation
  }

  if (number1 > number2.abs()) {
    // if 25 > |-25|  if(25 > 25 )
    print("$number1 is greater than $number2");
  } else {
    if (number1 == number2.abs()) {
      // if(25 == 25)
      print("the numbers are equals");
    } else
      print("$number2 is greater than $number1"); //interpolation
  }

  if (number1 > number2.abs()) {
    print("$number1 is greater than $number2");
  } else if (number1 == number2.abs()) {
    print("the numbers are equals");
  } else {
    print("$number2 is greater than $number1"); //interpolation
  }

  if (number1 < number2 && number1 * 2 > number2.abs() * 5) {
    print("Hello");
  } else {
    print("end if condition");
  }

  bool isMale2 = 5 > 6; // false
  // bool result = 5 > 6;
  if (isMale2) {
    // isMale2==true   isMale2==false
    print("male");
  } else {
    print("female");
  }
  //short condition
  print(isMale2 ? "Male" : "Female");
  // Task
  String wordResult = "";
  if (3 == 3) {
    wordResult = "3==3";
  } else {
    wordResult = "3!=3";
  }
  wordResult = (3 == 3 ? "3==3" : "3!=3");
  print(wordResult); // 3==3

  if ("Anas".toLowerCase().contains("as") &&
      "    Sam i   ".trim().contains(" ")) {
    print("Anas and sami");
  } else {
    print("hello");
  }

  // switch
  // syntax
  /*
  switch(value){
   case 21 : {} break;
   case 22 : {} break;
   case 23 : {} break;
   case 25 : {} break;

   // default {} break;

  }
   */
  int myAge = 25;
  myAge = 26;
  switch (myAge) {
  // 25
    case 21:
      print("21");
      break;
    case 22:
      print("22");
      break;
    case 23:
      print("23");
      break;
    case 24:
      print("24");
      break;
    case 25:
      {
        print("25");
      }
      break;
    default:
      {
        print("Age not found");
      }
      break;
  }

  num num22 = 25;
  num num12 = -15.5;

  var value22 = "anas"; // String
  print(value22);
  value22 = "my name is anas";
  print(value22);

  dynamic value44 = "anas";
  print(value44);

  value44 = 25;
  print(value44);

  value44 = false;
  print(value44);
  // var value33=25;

  // for loop
  //
  print(1);
  print(2);
  print(3);
  print(4);
  print(5);
  print(6);
  print(7);
  print(8);
  print(9);
  print(10);

  print(1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10);

  // syntax  optional ;   mandetory ;  optional
  // for (init value ;condition ; increase/decrease value ) {

  // }
  // prefix suffix
  //
  int i = 0;
  i = i + 1; // 1     i++;
  i++;
  i = i + 5; //
  i += 5; // i = i + 5 ;
  i *= 5; // i = i * 5 ;
  i -= 5; // i = i - 5 ;

  int x = 1;
  x = x + 1; // 2
  x++; // 3
  x++; // 4

  x = x + 2; // 6
  x += 2; // 8 x=x+2
  x += 4; //12 x=x+4
  x -= 2; // 10 x=x-2
  x *= 2; // 20 x=x*2
  x--; // 19
  --x;
  x = 0;

  print(x++ - 5); // 0 -5
  print(x); // 1
  x = 0;
  print(++x - 5); // -4
  x = 0;
  print(++x - (x + 2) + (++x - x - 4)); // 1 - 3 + -4 = -6

  for (int i2 = 0; i2 < 5; i2++) {
    print(i2); // 0 1 2 3 4
  }

  for (int counter = 0; counter <= 10; counter += 2) {
    print(counter); // 0 - 10   0 3 6 9
    counter++;
  }
  for (int counter = 0; counter <= 10;) {
    print(counter); // 0 - 10   0 3 6 9
    counter++;
  }
  // for (int counter = 0; counter <= 10;) {
  //   print(counter); // 0 - 10   0 3 6 9
  // } // Stack Over Flow

  for (int counter = 0; counter <= 10;) {
    print(counter); // 0 - 10   0 3 6 9
    counter += 2;
  }
  for (int counter = 0; counter <= 10; counter++) {
    if (counter % 2 == 1) {
      // 0%0 0   2%2 0   3%2 1   2%5 2
      print(counter); // 0 2 4 6 8 10
    }
  }

  int index = 0;
  for (; index < 10;) {
    print(index); //0 - 9
    index++;
  }
  index = 11;
  while (index < 10) {
    print(index);
    index++;
  }

  for (int counter = 10; counter > 2; counter--) {
    print(counter); // 10 9 8 7 6 5 4 3
  }

  for (int counter = 10; counter > 2; counter--) {
    if (counter == 4 || counter == 7) continue;
    print(counter); // 10 9 8  6 5 3
  }

  for (int counter = 10; counter > 2; counter--) {
    if (counter == 4) break;
    print(counter); // 10 9 8 7 6 5
  }
  // index = 0;
  // do {
  //   print(index);
  // } while (index < 5);


  // if else if switch
  // var dynamic
  // prefix postfix
  // for while do while

}