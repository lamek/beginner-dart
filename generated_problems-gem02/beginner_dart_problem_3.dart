Okay, here is a beginner Dart problem focusing on Maps, Strings, and Doubles, along with its solution.

---

**Problem Description: Student Grade Manager**

**Objective:**
Your task is to create a simple program that manages student names and their corresponding grades using a Dart `Map`. You will then calculate and display the average grade for all students.

**Requirements:**

1.  **Create a Map:** Declare a `Map` variable named `studentGrades`. The keys should be `String` (student names) and the values should be `double` (their grades).
2.  **Populate the Map:** Add at least three student entries to the `studentGrades` map. For example:
    *   'Alice': 85.0
    *   'Bob': 92.5
    *   'Charlie': 78.0
3.  **Calculate the Sum:** Iterate through the map and calculate the sum of all the grades.
4.  **Calculate the Average:** Calculate the average grade by dividing the sum of grades by the total number of students. Be careful about division by zero if the map could potentially be empty (though for this problem, assume it won't be empty after step 2).
5.  **Print Individual Grades:** Iterate through the map again and print each student's name and their grade in a user-friendly format (e.g., "Alice: 85.0").
6.  **Print Average Grade:** Print the calculated average grade, clearly labeling it (e.g., "Average Grade: 85.17"). You might want to format the average to a reasonable number of decimal places.

---

**Dart Solution:**

```dart
import 'dart:io'; // Not strictly necessary for core logic, but good practice.
                   // Used here for potential future extension or formatting.
import 'dart:math'; // Not used here, but often useful for number operations.

void main() {
  // 1. Create and 2. Populate the Map
  Map<String, double> studentGrades = {
    'Alice': 85.0,
    'Bob': 92.5,
    'Charlie': 78.0,
    'Diana': 88.5,
  };

  // Variables for calculation
  double sumOfGrades = 0.0;
  double averageGrade = 0.0;
  int numberOfStudents = studentGrades.length; // Get the number of students

  // --- Calculations ---

  // 3. Calculate the Sum
  // Iterate through the values (grades) of the map
  for (double grade in studentGrades.values) {
    sumOfGrades += grade;
  }

  // 4. Calculate the Average (handle division by zero)
  if (numberOfStudents > 0) {
    averageGrade = sumOfGrades / numberOfStudents;
  }

  // --- Output ---

  print("--- Student Report ---");

  // 5. Print Individual Grades
  print("Individual Grades:");
  // Iterate through the map entries (key-value pairs)
  studentGrades.forEach((name, grade) {
    print("$name: ${grade.toStringAsFixed(1)}"); // Format grade to 1 decimal place
  });

  print("\n----------------------"); // Separator line

  // 6. Print Average Grade
  if (numberOfStudents > 0) {
      print("Number of Students: $numberOfStudents");
      print("Sum of Grades: ${sumOfGrades.toStringAsFixed(2)}"); // Format sum
      print("Average Grade: ${averageGrade.toStringAsFixed(2)}"); // Format average to 2 decimal places
  } else {
      print("No student data found to calculate average.");
  }

  print("----------------------");
}
```

---