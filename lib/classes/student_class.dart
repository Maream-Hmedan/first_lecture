class StudentClass{
  String name;
  int age;
  double grade;

   StudentClass(this.name,this.age,this.grade);

   void studentInfo(){
     print("your name is $name your age $age and your mark $grade");
   }

  double studentMark(double mark1,double mark2) {
    String state;
    double finalMark;
    if ((mark1 + mark2) > 50) {
      finalMark = mark1 + mark2;
      state = "final mark =$finalMark Pass";
      print(state);
      return finalMark;
    } else {
      finalMark = mark1 + mark2;
      state = "final mark =$finalMark Fail";
      print(state);
      return finalMark;
    }
  }

  void studentState(double markTotal) {
    String state;
    if (markTotal > 50) {
      state = "Pass";
      print(state);
    } else {
      state = "Fail";
      print(state);
    }
  }


}