class Task{
  String title;
  String description;
  DateTime dueDate;
  bool isDone;

  Task({required this.title,required this.description,required this.dueDate, this.isDone=false});
}

class ToDoList{
  List <Task> tasks=[];

  void addTask(Task task){
    tasks.add(task);
  }

  void markTaskAsDone(int index){
    if(index>=0 && index<tasks.length){
      tasks[index].isDone= true;
    }
  }

  void removeTask(int index) {
    if(index>=0 && index<tasks.length){
      tasks.removeAt(index);
    }
  }

  void displayTasks(){
    for(int i=0;i<tasks.length;i++){
      print("Title: ${tasks[i].title}");
      print("Description: ${tasks[i].description}");
      print("Due Date: ${tasks[i].dueDate}");
      print("isDone: ${tasks[i].isDone?"Done":"Not Done"}");
      print("-----");
    }
  }
}
