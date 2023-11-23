abstract class Employee{
  String name;
  int employeeId;

  Employee({ required this.name,required this.employeeId});

 double calculateSalary();
}


class HourlyEmployee extends Employee{
  double hourlyRate;
  double hoursWorked;

  HourlyEmployee({required this.hourlyRate,required this.hoursWorked,required super.name, required super.employeeId});

  @override
  double calculateSalary() {
    return hoursWorked*hourlyRate;
  }
}

class SalariedEmployee extends Employee{
  double  monthlySalary;


  SalariedEmployee({required this. monthlySalary,required super.name, required super.employeeId});

  @override
  double calculateSalary() {
    return  monthlySalary;
  }


}