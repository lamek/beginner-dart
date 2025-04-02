Okay, here is a beginner Dart problem focused on `if-else` control flow for calculating a letter grade, along with its solution.

---

**Problem Description: Simple Grade Calculator**

**Goal:** Write a Dart program that asks the user to enter a numerical grade (0-100) and then prints the corresponding letter grade based on the following scale:

*   90-100: A
*   80-89: B
*   70-79: C
*   60-69: D
*   0-59: F

**Requirements:**

1.  Prompt the user to enter their numerical grade.
2.  Read the input from the user.
3.  Convert the input string to a number (e.g., a `double` or `int`).
4.  Use `if-else if-else` statements to determine the correct letter grade.
5.  Handle potential invalid input (e.g., non-numeric input, grades outside the 0-100 range) by printing an error message.
6.  Print the calculated letter grade or the error message.

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Prompt the user
  print('Please enter your numerical grade (0-100):');

  // 2. Read the input
  String? input = stdin.readLineSync(); // Read line as string, can be null

  if (input == null) {
    // Handle case where reading input failed (e.g., end of input stream)
    print('Error reading input.');
    return; // Exit the program
  }

  // 3. Convert input to a number and validate
  double? grade = double.tryParse(input); // Try to parse input as double

  if (grade == null) {
    // Handle non-numeric input
    print('Invalid input. Please enter a number.');
  } else if (grade < 0 || grade > 100) {
    // Handle out-of-range input
    print('Invalid grade. Please enter a grade between 0 and 100.');
  } else {
    // Input is valid, proceed with grading logic
    String letterGrade;

    // 4. Use if-else if-else statements to determine the letter grade
    if (grade >= 90) {
      letterGrade = 'A';
    } else if (grade >= 80) { // No need for && grade < 90 here
      letterGrade = 'B';
    } else if (grade >= 70) {
      letterGrade = 'C';
    } else if (grade >= 60) {
      letterGrade = 'D';
    } else { // Only grades < 60 are left
      letterGrade = 'F';
    }

    // 6. Print the calculated letter grade
    print('Your letter grade is: $letterGrade');
  }
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Imports the necessary library to interact with standard input/output (like reading from the console).
2.  **`main()`**: The entry point of every Dart program.
3.  **`print(...)`**: Displays messages to the user in the console.
4.  **`stdin.readLineSync()`**: Reads a line of text entered by the user from the console. It returns a `String?` (String or null).
5.  **`input == null` check**: Handles the unlikely scenario where reading input fails entirely.
6.  **`double.tryParse(input)`**: Attempts to convert the user's input string into a `double`. If the input is not a valid number (e.g., "abc"), it returns `null` instead of throwing an error (which `double.parse()` would do). This is safer for handling user input.
7.  **`if (grade == null)`**: Checks if the conversion failed (non-numeric input).
8.  **`else if (grade < 0 || grade > 100)`**: Checks if the numeric grade is outside the valid 0-100 range.
9.  **`if-else if-else` block**: This is the core logic.
    *   It checks the `grade` against the upper bounds of each letter grade category first (`>= 90`).
    *   If a condition is true (e.g., `grade >= 90`), the corresponding `letterGrade` is assigned, and the rest of the `else if` / `else` conditions in the block are skipped.
    *   If a condition is false, it moves to the next `else if`.
    *   The final `else` catches any remaining valid grades (those below 60).
10. **`print('Your letter grade is: $letterGrade');`**: Prints the final result using string interpolation (`$variableName`).