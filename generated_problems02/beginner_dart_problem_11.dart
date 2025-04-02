Okay, here is a beginner Dart problem focused on `if-else` control flow, along with its solution.

---

**Dart Programming Problem: Simple Grade Calculator**

**Topic:** Control Flow (if-else statements)
**Difficulty:** Beginner

**Problem Description:**

Write a Dart program that asks the user to enter a numerical grade (e.g., 85). Based on the input score, the program should determine and print the corresponding letter grade according to the following scale:

*   90 - 100: A
*   80 - 89:  B
*   70 - 79:  C
*   60 - 69:  D
*   0 - 59:   F

The program should:
1.  Prompt the user to enter a numerical grade.
2.  Read the input from the user.
3.  Convert the input string to a number (assume it's an integer for simplicity).
4.  Use `if-else if-else` statements to determine the correct letter grade.
5.  Handle potential invalid input (e.g., grades outside the 0-100 range or non-numeric input) gracefully by printing an error message.
6.  Print the calculated letter grade to the console.

**Example Interaction:**

```
Enter the numerical grade (0-100): 85
The letter grade is: B
```

```
Enter the numerical grade (0-100): 105
Error: Grade must be between 0 and 100.
```

```
Enter the numerical grade (0-100): seventy
Error: Invalid input. Please enter a number.
```

---

**Dart Solution:**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Prompt the user
  stdout.write('Enter the numerical grade (0-100): ');

  // 2. Read the input
  String? input = stdin.readLineSync(); // Read line as String? (nullable)

  // Check if input is null (e.g., end of input stream)
  if (input == null) {
    print('Error: No input received.');
    return; // Exit the program
  }

  int? score; // Use int? (nullable int) to handle potential parsing errors

  try {
    // 3. Convert the input string to a number (integer)
    score = int.parse(input);
  } on FormatException {
    // Handle non-numeric input
    print('Error: Invalid input. Please enter a number.');
    return; // Exit the program
  }

  // 5. Handle potential invalid input (range check)
  if (score < 0 || score > 100) {
    print('Error: Grade must be between 0 and 100.');
    return; // Exit the program
  }

  // Variable to store the letter grade
  String letterGrade;

  // 4. Use if-else if-else statements to determine the grade
  if (score >= 90) {
    letterGrade = 'A';
  } else if (score >= 80) { // No need to check score < 90, it's implied
    letterGrade = 'B';
  } else if (score >= 70) { // Implied score < 80
    letterGrade = 'C';
  } else if (score >= 60) { // Implied score < 70
    letterGrade = 'D';
  } else { // Implied score < 60 (and >= 0 due to earlier check)
    letterGrade = 'F';
  }

  // 6. Print the calculated letter grade
  print('The letter grade is: $letterGrade');
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Imports the necessary library for console input/output operations like `print`, `stdout.write`, and `stdin.readLineSync`.
2.  **`stdout.write(...)`**: Displays the prompt message to the user without adding a newline character, so the user types on the same line.
3.  **`stdin.readLineSync()`**: Reads the line of text entered by the user and returns it as a `String?` (a String that might be null).
4.  **Null Check (`if (input == null)`)**: Checks if reading the input failed (less common in simple console apps but good practice).
5.  **`try-catch` block**: Attempts to convert the input `String` to an `int` using `int.parse()`. If the input is not a valid integer (e.g., "hello"), a `FormatException` occurs, and the `catch` block executes, printing an error.
6.  **Range Check (`if (score < 0 || score > 100)`)**: Validates if the parsed score is within the acceptable 0-100 range.
7.  **`if-else if-else` Chain**: This is the core logic.
    *   It checks the `score` against the upper bound of each grade range first (`>= 90`).
    *   If a condition is true, the corresponding `letterGrade` is assigned, and the rest of the `else if`/`else` blocks are skipped.
    *   The final `else` catches any score that didn't meet the previous conditions (i.e., less than 60).
8.  **`print(...)`**: Displays the final result using string interpolation (`$letterGrade`) to include the calculated grade in the output message.