Okay, here is a beginner Dart problem focusing on `if-else if-else` control flow for grade classification, followed by its solution.

---

**Problem Description: Dart Grade Classifier**

**Goal:** Write a Dart program that takes a student's numerical grade (an integer between 0 and 100) and classifies it into a letter grade (A, B, C, D, F) based on the following standard criteria:

*   90-100: A
*   80-89: B
*   70-79: C
*   60-69: D
*   0-59: F

**Requirements:**

1.  Define an integer variable to store the student's numerical grade. You can hardcode a value for testing purposes (e.g., `int grade = 85;`).
2.  Use `if-else if-else` statements to determine the correct letter grade based on the numerical grade.
3.  Consider edge cases: What happens if the grade is exactly 90, 80, 70, or 60? Ensure your logic handles these correctly.
4.  (Optional but recommended) Add a check at the beginning to ensure the grade is within the valid range (0-100). If it's not, print an error message.
5.  Print the final letter grade corresponding to the numerical grade. For example, if the numerical grade is 85, the output should indicate a 'B' grade.

---

**Dart Solution:**

```dart
void main() {
  // 1. Define the numerical grade (try changing this value!)
  int numericalGrade = 72;

  // Variable to store the resulting letter grade
  String letterGrade;

  print("Processing numerical grade: $numericalGrade");

  // 4. (Optional but recommended) Validate the input grade range
  if (numericalGrade < 0 || numericalGrade > 100) {
    print("Error: Grade must be between 0 and 100.");
    letterGrade = "Invalid"; // Assign a value indicating invalid input
  } else {
    // 2. Use if-else if-else statements for classification
    if (numericalGrade >= 90) {
      letterGrade = 'A'; // 90-100
    } else if (numericalGrade >= 80) {
      letterGrade = 'B'; // 80-89 (>=80 is enough because <90 is implied by failing the first if)
    } else if (numericalGrade >= 70) {
      letterGrade = 'C'; // 70-79
    } else if (numericalGrade >= 60) {
      letterGrade = 'D'; // 60-69
    } else {
      letterGrade = 'F'; // 0-59 (covers all remaining valid grades)
    }

    // 5. Print the final letter grade
    print("Letter Grade: $letterGrade");
  }

  // Example of handling invalid input slightly differently:
  // You could skip printing the "Letter Grade:" line entirely if invalid.
  // The current structure prints "Letter Grade: Invalid" if out of range.
}
```

**Explanation:**

1.  **`void main() { ... }`**: The entry point of every Dart program.
2.  **`int numericalGrade = 72;`**: Declares an integer variable `numericalGrade` and initializes it with a value (72 in this example). You can change this value to test different scenarios.
3.  **`String letterGrade;`**: Declares a string variable `letterGrade` which will hold the result ('A', 'B', etc.).
4.  **`if (numericalGrade < 0 || numericalGrade > 100)`**: This first `if` checks if the grade is outside the acceptable 0-100 range. The `||` means "or". If the grade is invalid, it prints an error message.
5.  **`else { ... }`**: If the grade *is* within the valid range (0-100), the code inside this `else` block is executed.
6.  **`if (numericalGrade >= 90)`**: Checks if the grade is 90 or higher. If true, `letterGrade` becomes 'A'.
7.  **`else if (numericalGrade >= 80)`**: If the first condition (`>= 90`) was false, this condition checks if the grade is 80 or higher. Since we already know it's *not* 90+, this effectively checks the range 80-89.
8.  **`else if ...`**: The pattern continues for grades C and D.
9.  **`else { letterGrade = 'F'; }`**: If *none* of the previous `if` or `else if` conditions were true, it means the grade must be less than 60 (but we know it's >= 0 because of the initial validation). This assigns 'F'.
10. **`print("Letter Grade: $letterGrade");`**: This line (inside the first `else` block) prints the final calculated letter grade using string interpolation (`$variableName`). If the grade was invalid, this line is skipped in this specific structure (because it's inside the `else` corresponding to the validation `if`).