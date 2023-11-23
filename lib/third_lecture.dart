void main(){
  // Collections

  // List<int> marks = [25, 30, 12];
  // marks.add(29); // 25 30 12 29
  // print(marks);
  // print(marks[0]);
  // print(marks.length); // 4
  // print(marks.isEmpty); // false
  // print(marks.isNotEmpty); // true
  // print(marks.contains(25)); // true
  // print(marks.contains(0)); // false
  // print(marks.first); // 25
  // print(marks.last); // 29
  // marks.add(17);
  // marks.add(17);
  // marks.add(25);
  // print(marks);
  // print(marks.toSet().toList());
  // print(marks);
  // print(marks.reversed.toList());
  // print(marks.where((element) => element > 25).toList());
  // print(marks.where((element) => element > 12).toList());
  // print(marks.where((element) => element > 30).toList());
  // // marks.add("anas");
  // print(marks.where((element) {
  //   return element > 12;
  // }).toList());
  // print('anas');
  // print(marks.firstWhere((element) => element > 12));
  // if (marks.any((element) => element > 12)) {
  //   try {
  //     print(marks.firstWhere((element) => element > 50));
  //   } catch (e) {
  //     print("error handling ");
  //     print('skip');
  //     print(e);
  //   } finally {
  //     print("finally called");
  //   }
  // }
  //
  // marks.sort();
  // print(marks);
  // marks = marks.reversed.toList();
  // print(marks);
  // marks.insert(0, 7);
  // print(marks);
  // try {
  //   marks.insert(50, 50);
  // } catch (_) {
  //   print("error handling for inserting in index 50");
  // }
  // marks.insert(marks.length, 50);
  // print("replace range before");
  // print(marks);
  // marks.replaceRange(0, 3, [1, 2]);
  // print("replace range after");
  //
  // print(marks);
  //
  // print(marks.indexOf(25)); // 0
  // print(marks.lastIndexOf(25)); // 0
  // print(marks.any((element) => element > 50));
  // print(marks.any((element) => element > 10));
  // print(marks.elementAt(0));
  // print(marks[0]);
  // print(marks.every((element) => element > 0)); // true
  // print(marks.every((element) => element > 25)); // false
  // print(marks.lastWhere((element) => element > 12 && element < 48));
  // marks.addAll([25, 12, 25, 46]);
  // print(marks);
  // marks.insertAll(3, [25, 14]);
  // print(marks);
  // print(marks.sublist(5));
  // print(marks.sublist(5, 8));
  // print(marks);
  // print(marks.skip(4));
  // print(marks.skip(4).toList().indexOf(25));
  // print(marks.getRange(1, 4));
  // print(marks);
  // marks.remove(1); // value 1
  // marks.removeAt(0); // index 1
  // print(marks); // 25 ...
  // marks.removeLast();
  // print(marks);
  // marks.removeWhere((element) => element > 48);
  // print(marks);
  //
  // print(marks.take(4));
  // print(marks);
  // marks.insert(2, 55);
  // print(marks);
  // marks.insertAll(2, [14, 25]);
  // print(marks);
  //
  // List<String> names = [
  //   "Leen",
  //   "asmaa",
  //   "Bashar",
  //   "marah",
  //   "roa'a ",
  //   "Mohammad",
  //   "Lana"
  // ];
  // print(names.where((element) => element.startsWith("L")));
  // print(names.firstWhere((element) => element.startsWith("L")));
  // print(names.lastWhere((element) => element.startsWith("L")));
  // print(names.where((element) => element.length > 4));
  // print(names.skip(2).firstWhere((element) => element.startsWith("L")));
  // print(names.skip(1).take(3));
  // List<String> subNames = names.sublist(names.length - 4);
  // print(subNames);
  // print(subNames.where((element) => element.length > 4));
  //
  // // Map json dectionary
  // // Map <int , String> = {};
  // // Map <String , int> students = { "Anas Rasheed": 30 }
  // Map<String, int> studentsAge = {
  //   "Anas Rasheed": 55,
  //   "Reem": 25,
  //   "Bashar": 30,
  //   "qamar": 24,
  //   "Roa'a": 18,
  //   "Mariam": 22,
  //   "Asma": 20,
  // };
  // studentsAge.putIfAbsent("Eman", () => 22);
  // studentsAge.putIfAbsent("Eman", () => 25);
  // print(studentsAge);
  // studentsAge.update("Eman", (value) => 28);
  // print(studentsAge);
  //
  // if (studentsAge.containsKey("Soso")) {
  //   studentsAge.update("Soso", (value) => 28);
  // }
  //
  // // try {
  // //   studentsAge.update("Soso", (value) => 28);
  // // }catch(_){
  // //   print("handling exception");
  // // }
  // print(studentsAge);
  // print(studentsAge.containsValue(28));
  // // studentsAge.updateAll((key, value) => 30);
  // studentsAge.updateAll((key, value) {
  //   // if(key.length>6) {
  //   //   return 30;
  //   // } else {
  //   //   return 25;
  //   // }
  //   if (value.isEven)
  //     return value + 1;
  //   else
  //     return value + 2;
  // });
  //
  // print(studentsAge);
  // studentsAge.remove("Anas Rasheed");
  // print(studentsAge);
  // studentsAge.removeWhere((key, value) => value > 30);
  // print(studentsAge);
  // print(studentsAge["Reem"]);
  // print(studentsAge.keys.toList());
  // print(studentsAge.values.toList());
  // List<String> keys = studentsAge.keys.toList();
  // List<int> values = studentsAge.values.toList();
  // // studentsAge.clear();
  // print(studentsAge);
  // studentsAge.forEach((key, value) {
  //   if (value > 22) print(key);
  // });
  // print(studentsAge.entries.where((element) {
  //   return element.value > 22;
  // }).toList());



// TASK

List <double> calculation=[12.5,20,17.24,32.9,67.8,9.8,10.4,21.3,56.3,13.4];
 double averageCalculation;
 double sumCalculation=0;
 double maxNum=calculation[0];
 double minNum=calculation[0];

 calculation.forEach((element) {
   sumCalculation=sumCalculation+element;
 });
 print("sumCalculation = $sumCalculation ");


  averageCalculation=sumCalculation/(calculation.length);
  print("averageCalculation = $averageCalculation ");

calculation.sort();
print("max number ${calculation.last}");
print("min number ${calculation.first}");

calculation.forEach((element) {
 if(element>maxNum){
 maxNum=element;
 }
});
print("max number $maxNum");

calculation.forEach((element) {
 if(element<minNum){
  minNum=element;
 }
});
print("min number $minNum");

calculation.add(90.8);
calculation.add(100.9);
calculation.addAll([1.8,7.12]);
print(calculation);
calculation.sort();
print("sort calculation $calculation");
calculation=calculation.reversed.toList();
print("calculation from biggest $calculation");


calculation.removeWhere((element) => element<10);
print("remove all values that less than 10 $calculation");


for(int i=0;i<calculation.length;i++)
{
 if(calculation[i]>15) {
   calculation[i]=calculation[i]+2;
 }
 
}
print(calculation);



}
