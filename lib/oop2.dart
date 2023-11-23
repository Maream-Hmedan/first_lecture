import 'dart:io';
import 'package:first_lecture/classes/student_class.dart';
import 'package:first_lecture/classes/student_new_class.dart';
import 'package:first_lecture/classes/temp_class.dart';
import 'classes/bank_account_class.dart';

void main() {
  BankAccount BA1 = BankAccount("123456789", "MAREAM", 0);
  BA1.deposit(1000);
  BA1.withdraw(500);
  BA1.getBalance;
  print("------------------------------------------------------------------------------------");

  TemperatureConverter tempConverter = TemperatureConverter();
  print("Choose one of these options:");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("Enter temperature in Celsius: ");
    double celsius = double.parse(stdin.readLineSync()!);
    double fahrenheit = tempConverter.celsiusToFahrenheit(celsius);
    print("$celsius C is equal to $fahrenheit F");
  } else if (choice == 2) {
    print("Enter temperature in Fahrenheit: ");
    double fahrenheit = double.parse(stdin.readLineSync()!);
    double celsius = tempConverter.fahrenheitToCelsius(fahrenheit);
    print("$fahrenheit F is equal to $celsius C");
  } else {
    print("Invalid option");
  }
  print("----- Second Solution For Question TOW  ");
  double temp=23.4;
  print("Choose one of these options:");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");
  int option = int.parse(stdin.readLineSync()!);
  if (option == 1) {
    double celsius = temp;
    double fahrenheit = tempConverter.celsiusToFahrenheit(celsius);
    print("$celsius C is equal to $fahrenheit F");
  } else if (option == 2) {
    double fahrenheit = temp;
    double celsius = tempConverter.fahrenheitToCelsius(fahrenheit);
    print("$fahrenheit F is equal to $celsius C");
  } else {
    print("Invalid option");
  }
  print("------------------------------------------------------------------------------------");

  Student S1 = Student("MAREAM", 23);
  S1.addGrades([10, 20, 30, 40, 50, 60, 70, 80, 90]);
  print("Grade Average ${S1.calculateAverageGrade()}");
  S1.studentInfo();
}
