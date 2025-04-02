Okay, here is a beginner Dart problem focused on variables and data types, specifically using Maps, Lists, ints, doubles, Strings, and bools for student grades, along with its solution.

---

### Problem Description: Student Grades Tracker

**Objective:**
Write a Dart program to manage student grades using basic data structures and calculate the class average. This exercise will help you practice using `Map`, `List`, `String`, `int`, `double`, and `bool`.

**Tasks:**

1.  **Create a Map:** Define a `Map` named `studentGrades`. The keys should be student names (`String`), and the values should be their corresponding grades (`int`). Populate this map with at least four students and their grades (e.g., Alice: 85, Bob: 92, Charlie: 78, David: 55).
2.  **Extract Grades:** Create a `List<int>` named `grades` that contains only the grade values from the `studentGrades` map.
3.  **Calculate Sum:** Calculate the sum of all grades stored in the `grades` list.
4.  **Calculate Average:** Calculate the average grade. Remember that the average might not be a whole number, so use a `double` for the result. Handle the case where there might be no grades (though populate it for this problem).
5.  **Print Individual Results:** Iterate through the `studentGrades` map. For each student, print their name, their grade, and whether they passed (true/false). Assume a passing grade is 60 or higher.
6.  **Print Average:** Print the calculated average grade, formatted to two decimal places.

---

### Solution Code:

```dart
void main() {
  // 1. Create a Map for student names (String) and grades (int)
  Map<String, int> studentGrades = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
    'David': 55,
    'Eve': 65,
  };

  // 2. Extract Grades into a List<int>
  // The .values property gives an Iterable<int>, .toList() converts it to a List<int>
  List<int> grades = studentGrades.values.toList();

  // 3. Calculate the sum of grades
  int sum = 0;
  // Iterate through the list of grades and add each to the sum
  for (int grade in grades) {
    sum += grade;
  }
  // Alternative using reduce (more concise but maybe less beginner-friendly):
  // int sum = grades.isEmpty ? 0 : grades.reduce((value, element) => value + element);


  // 4. Calculate the average grade (use double for potential decimal values)
  double averageGrade = 0.0;
  if (grades.isNotEmpty) {
    // Perform division to get the average. Dart's / operator produces a double.
    averageGrade = sum / grades.length;
  } else {
    print("No grades available to calculate average.");
  }

  // 5. Print Individual Results (Name, Grade, Pass Status)
  print("--- Individual Student Grades ---");
  studentGrades.forEach((name, grade) {
    // Determine pass status using a boolean
    bool passed = grade >= 60;
    // Print using string interpolation
    print("Student: $name, Grade: $grade, Passed: $passed");
  });

  // 6. Print the Average Grade
  print("\n--- Class Summary ---");
  // Use toStringAsFixed() to format the double to 2 decimal places
  print("Average Grade: ${averageGrade.toStringAsFixed(2)}");
}
```

---