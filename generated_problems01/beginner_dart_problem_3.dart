Okay, here is a beginner Dart problem focusing on variables, data types (specifically `Map`, `String`, `int`, `double`), and basic calculations, along with its solution.

---

**Problem Description**

**Title:** Student Grade Manager

**Objective:**
Write a Dart program to store and manage student grades. You will use a `Map` to associate student names (`String`) with their corresponding grades (`int`). After storing the grades, you need to calculate the average grade for all students and print both the individual grades and the calculated average.

**Requirements:**

1.  **Create a Map:** Declare a `Map` variable named `studentGrades`. The keys should be `String` (student names) and the values should be `int` (their grades).
2.  **Populate the Map:** Add at least three student entries to the map. For example:
    *   Alice: 85
    *   Bob: 92
    *   Charlie: 78
3.  **Calculate the Average Grade:**
    *   Iterate through the grades in the map.
    *   Calculate the sum of all grades.
    *   Calculate the average grade (sum of grades / number of students). Store this average in a `double` variable.
4.  **Print Output:**
    *   Print each student's name and their corresponding grade in a clear format (e.g., "Student: [Name], Grade: [Grade]").
    *   Print the calculated average grade, clearly labeled (e.g., "Average Grade: [Average]").

**Data Types to Use:**
*   `Map<String, int>` for storing student names and grades.
*   `String` for student names.
*   `int` for individual grades and the sum calculation.
*   `double` for the average grade.

---

**Dart Solution Code**

```dart
void main() {
  // 1. Create and 2. Populate the Map
  Map<String, int> studentGrades = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
    'Diana': 88, // Added one more for a slightly better example
  };

  // Variables for calculation
  int totalGrade = 0;
  int numberOfStudents = studentGrades.length; // Get the number of students

  // Print header for individual grades
  print("--- Student Grades ---");

  // 4. Print individual student grades and calculate sum
  // Use forEach to iterate through the map entries (key-value pairs)
  studentGrades.forEach((name, grade) {
    print("Student: $name, Grade: $grade");
    totalGrade += grade; // Add current grade to the total
  });

  // 3. Calculate the Average Grade
  // Ensure division results in a double, Dart's '/' operator does this automatically
  double averageGrade = 0.0; // Initialize average grade
  if (numberOfStudents > 0) { // Avoid division by zero if the map is empty
      averageGrade = totalGrade / numberOfStudents;
  }


  // 4. Print the Average Grade
  print("\n--- Class Summary ---"); // Add a newline for separation
  print("Number of Students: $numberOfStudents");
  print("Total Grade Points: $totalGrade");
  // Use toStringAsFixed(2) to format the average to 2 decimal places
  print("Average Grade: ${averageGrade.toStringAsFixed(2)}");
}
```

---