import 'package:first_lecture/classes/bank_class.dart';
import 'package:first_lecture/classes/student_class.dart';

import 'classes/task_class.dart';

void main(){
  StudentClass S1=StudentClass("Maream", 23, 90);
  S1.studentInfo();
  double result=S1.studentMark(40, 40);
  S1.studentState(result);

  print("----------------------------------------------------------------------------");

  BankAccount B1=BankAccount("12234567", "maream", 5000);
  B1.depositing(300.50);
  B1.withDrawing(7000);
  print("-----");
  BankAccount B2=BankAccount("903487", "eman", 10000);
  B2.depositing(380);
  B2.withDrawing(7000);
  print("----------------------------------------------------------------------------");

  ToDoList toDoList = ToDoList();

  // Add tasks
  toDoList.addTask(Task(
      title: "Task 1",
      description: "This is description for Task 1",
      dueDate: DateTime(2023, 10, 2))
  );

  toDoList.addTask(Task(
      title: "Task 2",
      description: "This is description for Task 2",
      dueDate: DateTime(2023, 10, 5))
  );

  toDoList.addTask(Task(
      title: "Task 3",
      description: "This is description for Task 3",
      dueDate: DateTime(2023, 10, 10))
  );

  toDoList.addTask(Task(
      title: "Task 4",
      description: "This is description for Task 4",
      dueDate: DateTime(2023, 10, 14))
  );

  // Mark tasks as done
  toDoList.markTaskAsDone(2);


  // Remove tasks
  toDoList.removeTask(0);

  // Displaying the list of tasks
  toDoList.displayTasks();
  

}