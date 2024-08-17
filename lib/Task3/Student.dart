class Student {
  String name;
  int id;
  List<double> grades;

  Student({required this.name, required this.id}) : grades = [];

  void addGrade(double grade) {
    grades.add(grade);
    print("Grade added successfully for $name");
  }

  double calcAverage() {
    double total = 0.0;
    if (grades.isEmpty) {
      print('No grades available to calculate average.');
      return total;
    } else {
      for (double grade in grades) {
        total += grade;
      }
      double average = total / grades.length;
      return average;
    }
  }

  void displayGrades() {
    if (grades.isEmpty) {
      print('$name has no grades yet.');
    } else {
      print('Grades for $name: ${grades.join(", ")}');
    }
  }

  void determinePassFail() {
    double average = calcAverage();
    average >= 50 ? print("$name is passed") : print("$name is failed");
  }
}
