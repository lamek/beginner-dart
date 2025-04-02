Okay, here is a beginner Dart problem focused on variables, data types (especially `Map`), and basic calculations, along with its solution.

---

**Problem Description: Student Grades**

**Objective:** Write a Dart program to store and process student grades using a Map.

**Requirements:**

1.  **Create a Map:** Define a variable named `studentGrades` that holds a `Map`. The keys should be student names (`String`) and the values should be their corresponding grades (`int`).
2.  **Populate the Map:** Add at least three student entries to the `studentGrades` map (e.g., 'Alice': 85, 'Bob': 92, 'Charlie': 78).
3.  **Print Individual Grades:** Iterate through the map and print each student's name and their grade in the format: `"Name: Grade"`.
4.  **Calculate Average Grade:** Calculate the average grade of all students in the map. Remember that the average might be a decimal number.
5.  **Print Average Grade:** Print the calculated average grade to the console, clearly labelled.

**Focus Concepts:**
*   Variable declaration (`Map`, `int`, `double`)
*   Map literals and access
*   Iteration (using `forEach` or a `for-in` loop)
*   Basic arithmetic operations
*   Type conversion (if needed for average calculation)
*   Printing output (`print()`)

---

**Solution:**

```dart
void main() {
  // 1. Create a Map & 2. Populate the Map
  // Using a Map literal to initialize with student names (String) and grades (int).
  Map<String, int> studentGrades = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78,
    'Diana': 88,
  };

  // 3. Print Individual Grades
  print('--- Student Grades ---');
  // Iterate through each key-value pair (entry) in the map.
  studentGrades.forEach((name, grade) {
    print('$name: $grade'); // Using string interpolation to print name and grade.
  });

  // 4. Calculate Average Grade
  int totalGrade = 0;
  // Iterate through the values (grades) of the map.
  for (int grade in studentGrades.values) {
    totalGrade += grade; // Summing up all the grades.
  }

  // Calculate the average. Ensure floating-point division by converting
  // totalGrade to double or dividing by a double representation of the length.
  double averageGrade = 0;
  if (studentGrades.isNotEmpty) { // Avoid division by zero if the map is empty
      averageGrade = totalGrade / studentGrades.length;
  }


  // 5. Print Average Grade
  print('\n--- Average Grade ---');
  // Print the average, formatting to 2 decimal places for readability.
  print('Average Grade: ${averageGrade.toStringAsFixed(2)}');
}
```

**Explanation:**

1.  **`Map<String, int> studentGrades = {...};`**: Declares a map named `studentGrades` where keys are `String`s and values are `int`s. It's initialized with four student entries using a map literal.
2.  **`studentGrades.forEach((name, grade) { ... });`**: This uses the `forEach` method available on Maps to iterate through each entry. For each entry, it provides the `name` (key) and `grade` (value) to the function block.
3.  **`print('$name: $grade');`**: Inside the `forEach`, this line prints the student's name and grade using string interpolation (`$variableName`).
4.  **`int totalGrade = 0;`**: Initializes an integer variable `totalGrade` to store the sum of grades.
5.  **`for (int grade in studentGrades.values)`**: This `for-in` loop iterates directly over the *values* (the grades) stored in the map.
6.  **`totalGrade += grade;`**: In each iteration, the current `grade` is added to the `totalGrade`.
7.  **`if (studentGrades.isNotEmpty)`**: Checks if the map contains any entries before calculating the average to prevent division by zero.
8.  **`double averageGrade = totalGrade / studentGrades.length;`**: Calculates the average. In Dart 2, the `/` operator performs floating-point division, so the result is automatically a `double`. `studentGrades.length` gives the number of entries (students) in the map.
9.  **`print('Average Grade: ${averageGrade.toStringAsFixed(2)}');`**: Prints the calculated average. `toStringAsFixed(2)` formats the `double` value to have exactly two decimal places. The `\n` before `--- Average Grade ---` adds a newline for better separation in the output.