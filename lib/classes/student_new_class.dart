class Student {
  String name;
  int age;
  List<int> grades = [];

  Student(this.name, this.age);

  void studentInfo() {
    print("your name is $name your age $age and your marks $grades");
  }

  void addGrades(List<int>marks) {
    grades.addAll(marks);
  }

  double calculateAverageGrade() {
    int sum=0;
    double avarage;
    for(int i=0;i<grades.length;i++){
      sum+=grades[i];
    }
    avarage=sum/(grades.length);
    return avarage;
  }
}
