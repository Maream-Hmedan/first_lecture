
import 'dart:math'as math;

void main() {
  // Data Type
  // String " " ' '
  print("Hello");
  print('Hello');
  print("my age is${18}");
  print("my age is "+ 18.toString());

  // int -50 1 54 564
  print(50);
  print(-250);

  // double 6.89 5.24
  print(25.3);
  print(-200.0);

  // bool true false
  print(true);
  print(false);

  // new variable Data Type Variable Name;
  String name; //declaration
  name="Anas"; // initialization
  String name1="Anas";
  String name2="Ahmed";
  print(name1+name2);

  int number=25; //declaration + initialization
  print(number);

  double realNumber=27.85;
  print(realNumber);

  bool isMale=true;
  print(isMale);

  /*
  * Name Convention
  * start with latter or under score
  * no space
  *lower camel case
  * String AnasName;
  * String thisIsMyName;
  */

  String word ="anas is the constructor";
  int age=25;
  bool isFemale= false;
  double temp=34.2;

  print(word);
  word="anas";
  print(word);
  age=30;
  print(age);
  isFemale=false;
  print(isFemale);
  temp=35.5;
  print(temp);

  word="$word is the instructor"; // interpolation
  print(word);

  /*
  * String data=25; --->syntax error
  * int value=22.5; --->syntax error
  */

  // int methods
  int count=1;
  int count2=5;

  print(count/count2);
  print(count*count2);
  print(count+count2);
  print(count-count2);

 int newValue=count+count2;
 print(newValue);

 /*
 * newValue=count/count2; --->syntax error
 */

  print(newValue.isEven);
  print(newValue.isOdd);

  temp=-2;
  print(temp.isNegative);
  print(temp.abs());

  temp=2.5;
  print(temp.floor());
  print(temp.round());

  temp=2.2;
  print(temp.round());
  print(temp.ceil());

  print(5>3);
  print(5>=5);
  print(5==5);
  print(5!=5);
  print(5<10);
  print(9<=10);

  count=5;
  count2=5;
  print(count > count2);
  print(count == count2);
  print(count != count2+1);
  print(count*2 != count2+5);

  //Logical Operator
  print(true||true);
  print(true||false);
  print(false||true);
  print(false||false);

  print(true&&true);
  print(true&&false);
  print(false&&true);
  print(false&&false);

  print(5>3 || 5!=5);//true
  print(5>3 && 5!=5);//false

  print(count2*2>count+5*2 || count*3<=count2*3-5);
  // (10>15 || 15<=10) -> false || false -> false

  print(count+15*2+4<=count2*4-10||count+(count2*10-45)>count2-10*2+20);
  //(5+30+4<=20-10||5+(50-45)>5-20+20)
  //(39<=10 || 10>5)-> false||true->true

  print(count2*2-25*4<=count*4-3*2-4);
  //(10-100<=20-6-4)->(-90<=10)->true

  double value1=10.5;
  double value2=4.5;
  print(value1*2-value2/2>=value1*4-5*value2||value2-value1*4>20);
  // (21-2.25>=42-22.5||4.5-42>20)
  //18.75>=19.5 ||-37.5>20 ->false||false->false

  print(math.max(10, 20));
  print(math.min(10, 20));
  print(math.pow(2,5));
  print(math.sqrt(49));

  // String Method

  String sent="This laptop is perfect";
  print(sent.toLowerCase());
  print(sent.toUpperCase());
  print(sent.isEmpty);//false
  print(sent.isNotEmpty);//true

  print("".isEmpty);//true
  print(" ".isEmpty);//false -->null not empty
  print(" ".trim().isEmpty);//true

  print(sent.contains("laptop"));//true
  print(sent.contains("Laptop"));//false

  print("L".codeUnits);
  print("l".codeUnits);

  print(" Hello Word".trimLeft());
  print("Hello Word ".trimRight());
  print(sent.length);

  print(sent.indexOf("T"));
  print(sent.indexOf("k"));
  print(sent.indexOf("t"));
  print(sent.lastIndexOf("t"));

  print (sent.endsWith("ect"));
  print (sent.endsWith("fect"));
  print (sent.endsWith("perfect"));
  print (sent.endsWith(" perfect "));

  print (sent.startsWith("This"));
  print (sent.startsWith("this"));
  print (sent.startsWith("This is "));
  print (sent.startsWith("This lap"));
  print (sent.startsWith("This laptop is perfect"));

  print(sent.toLowerCase().startsWith("this"));
  print(sent);// This laptop is perfect

  print(sent.replaceAll("This", "it's"));

  sent="This laptop is perfect this laptop is bad";
  print(sent.replaceAll("This", "it's"));
  //it's laptop is perfect this laptop is bad
  print(sent.toLowerCase().replaceAll("this", "it's"));
  //it's laptop is perfect it's laptop is bad
  print(sent.toLowerCase().replaceAll("this", "hello world"));
  //hello world laptop is perfect hello world laptop is bad
  print(sent.toLowerCase().replaceFirst("this", "it's"));
  //it's laptop is perfect this laptop is bad
  print(sent.toLowerCase().replaceRange(1, 3, "Anas"));
  //tAnass laptop is perfect this laptop is bad
  print(sent.toLowerCase().replaceRange(1,null, "Anas"));
  //tAnas
  print(sent.toLowerCase().replaceRange(1,sent.length, "Anas"));
  //tAnas
  print(sent.compareTo("a"));//-1
  print(sent.compareTo("This laptop is perfect"));//1
  print(sent.compareTo("This laptop is pe"));//1
  print(sent.compareTo("T"));//1

  // if condition simple
  //syntax
  if(5==5) {
    //true
    print("five");
  }else{
    //false
    print("condition is false");
  }

  //Task


  double numOne=0.78;
  int numTow=80;
  double numThree=0.23;
  int numFour=3;
  double numFive=2.25;

  //Logical OR With Arithmetic Operator
  print(numOne*2 < numTow*0.5 || numFour-numThree>numFive);
  // true || true->true
  print(numTow/2 -numFive*10> numThree+(numFour-numFive)||numThree*10+numFive>numThree+numOne+15 );
  // true ||false->true
  print(numOne*numTow<numThree*20-numFour+numFive||10*numFive-0.5<=numTow/2 -numFive*numFour);
  //false ||true ->true
  print(numOne*2>numFour+(numTow*numOne) || numFour-numThree>numFive*10);
  //false || false->false

  //Logical AND With Arithmetic Operator
  print(numTow-numOne*100+numFour*10<numTow/numFour+(numOne*10) && numTow-(numOne*numFive)>numTow*0.5);
  // true && true -> true
   print(numThree*numFive+23>numFive*0.2 && (numOne*numFive)>numTow*0.5);
   // true && false-> false
   print(numThree*5+numFive-7>numThree+numOne+15 && numOne*4<numFour+(numTow*numOne)-9);
  // false && true-> false
  print(numOne*2>numFour+(numTow*numOne*2)*0.3 && numFour-numThree+1.2>numFive*10);
  // false && false-> false

  // math package
  print(math.pow(numFour, 5));
  print(math.max(numTow, numFour));
  print(math.max(numOne, numThree));

  // String Methods
  String firstName=" Maream is first part , first section  ";
  String lastName="Hmedan is second part the second is hmedan ";
  print(firstName.length);
  print(firstName.toUpperCase());
  print(firstName.toLowerCase());
  print(firstName.isEmpty);
  print(firstName.isNotEmpty);
  print(firstName.trim());
  print(firstName.trimRight());
  print(firstName.trimRight());
  print(firstName.contains("part"));
  print(firstName.contains("maream"));
  print(firstName.indexOf("e"));
  print(firstName.endsWith("tion  "));
  print(firstName.startsWith(" Mare"));
  print(firstName.replaceAll("first", "one"));
  print(firstName.replaceFirst("first", "one"));
  print(firstName.replaceRange(9, 12,"SSSS"));
  print(firstName.compareTo(" "));
  print(firstName.compareTo(" m"));
  print(firstName.compareTo(" MEE"));

  print(lastName.length);
  print(lastName.toUpperCase());
  print(lastName.toLowerCase());
  print(lastName.isEmpty);
  print(lastName.isNotEmpty);
  print(lastName.trim());
  print(lastName.trimRight());
  print(lastName.trimRight());
  print(lastName.contains("part"));
  print(lastName.contains("laptop"));
  print(lastName.indexOf("a"));
  print(lastName.endsWith("dan "));
  print(lastName.startsWith("Hme"));
  print(lastName.replaceAll("second", "tow"));
  print(lastName.replaceFirst("hmedan", "family"));
  print(lastName.replaceRange(7, 14,"MMMM"));
  print(lastName.compareTo(" "));
  print(lastName.compareTo("h"));
  print(lastName.compareTo("H"));


  }




