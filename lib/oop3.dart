import 'package:first_lecture/classes/abs2_class.dart';
import 'package:first_lecture/classes/abs_class.dart';
import 'classes/abs3_class.dart';
void main(){
  Shape circle=Circle(radius: 3);
  print("Area of circle = ${circle.getArea()}");

  Shape rectangle=Rectangle(length: 2, width: 4);
  print("Area of rectangle = ${rectangle.getArea()}");

  Shape triangle=Triangle(base: 2, height: 5);
  print("Area of triangle = ${triangle.getArea()}");
  print("-----------------------------------------------");

  Employee emp1=HourlyEmployee(hourlyRate: 15, hoursWorked: 40, name: "Sami", employeeId: 23);
  print(" The Salary for HourlyEmployee :${emp1.calculateSalary()}");

  Employee emp2=SalariedEmployee(monthlySalary: 650, name: "Ahmad", employeeId: 90);
  print(" The Salary for SalariedEmployee :${emp2.calculateSalary()}");
  print("-----------------------------------------------");


  SavingsAccount accountOne=SavingsAccount(interestRate: 1.5, accountNumber: 24567, accountHolderName: "Maream", balance: 7000);
  var accountTow=CheckingAccount(fee: 20, accountNumber: 89012, accountHolderName: "Eman", balance: 6070);
  accountOne.deposit(570);
  accountTow.withDrawal(100);
  accountOne.calculatedAndAddInterest();
  accountTow.deductFee();





}