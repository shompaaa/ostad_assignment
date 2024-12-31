abstract class Role{
  void displayRole();
}

//Person class creation
class Person{
  String name;
  int age;
  String address;
  Role ? role;

  Person(this.name, this.age, this.address);

  //getter method for the attributes
  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

}

//Student class creation that extends Person
class Student extends Person{
  int studentID;
  String grade;
  List<int> courseScore;

  Student(super.name, super.age, super.address, this.studentID, this.grade, this.courseScore);

  @override
  void displayRole(){
    print("Role: Student");
  }

  double calculateAverageScore(){
    int totalScore = courseScore.reduce((a,b) => (a+b));
    return (totalScore/courseScore.length);
  }

}

//Teacher class creation that extends Person:
class Teacher extends Person{
  int teacherID;
  List<String> coursesTaught;

  Teacher(super.name, super.age, super.address, this.teacherID, this.coursesTaught);

  @override
  void displayRole(){
    print("Role: Teacher");
  }

  //display each course from the List
  void displayCoursesTaught(){
    print("Course Taught:");
    for(var courses in coursesTaught){
      print("-${courses}");
    }
  }
}


main(){
  //Creating object for Student & Teacher
  Student virat = Student("Virat Kohli", 35, "14 lane Street", 191, "A+", [85,88,82,80]);
  Teacher pat = Teacher("Pat Cummins", 36, "25 lane Street", 252, ["Physics","Chemistry","Mathematics","Cricket"]);

  //Student Information Display
  print("Student Information:");
  virat.displayRole();
  print("Name: ${virat.getName()}");
  print("Age: ${virat.getAge()}");
  print("Address: ${virat.getAddress()}");
  print("Average Score: ${virat.calculateAverageScore()}\n\n");

  //Teacher Information Display
  print("Teacher Information:");
  pat.displayRole();
  print("Name: ${pat.getName()}");
  print("Age: ${pat.getAge()}");
  print("Address: ${pat.getAddress()}");
  pat.displayCoursesTaught();

}