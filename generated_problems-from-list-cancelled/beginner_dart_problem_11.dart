Okay, here is a beginner Dart problem focused on `if-else if-else` control flow, along with its solution.

---

**Problem Description**

**Title:** Grade Classifier

**Concept:** Control Flow (if-else if-else statements)

**Task:**
Write a Dart program that takes a student's numerical grade (an integer between 0 and 100) as input from the user via the console. The program should then use `if-else if-else` statements to determine the corresponding letter grade based on the following standard scale:

*   90 - 100: 'A'
*   80 - 89:  'B'
*   70 - 79:  'C'
*   60 - 69:  'D'
*   0 - 59:   'F'

After determining the letter grade, the program should print it to the console. Include basic input validation to ensure the entered grade is a valid number within the 0-100 range. If the input is invalid (not a number or outside the range), print an appropriate error message.

**Example Input/Output:**

*   Input: `85`
    Output: `The corresponding letter grade is: B`
*   Input: `92`
    Output: `The corresponding letter grade is: A`
*   Input: `55`
    Output: `The corresponding letter grade is: F`
*   Input: `70`
    Output: `The corresponding letter grade is: C`
*   Input: `105`
    Output: `Error: Grade must be between 0 and 100.`
*   Input: `abc`
    Output: `Error: Invalid input. Please enter a whole number.`

---

**Dart Solution**

```dart
import 'dart:io'; // Import the I/O library for console input

void main() {
  // 1. Prompt the user for input
  print("Enter the student's numerical grade (0-100):");

  // 2. Read the input from the console
  String? input = stdin.readLineSync(); // Reads a line of text, can be null

  // 3. Validate and Parse Input
  if (input == null || input.isEmpty) {
    print("Error: No input provided.");
    return; // Exit the program if input is null or empty
  }

  int? grade; // Use nullable int for parsing result
  try {
    grade = int.parse(input); // Attempt to convert the input string to an integer
  } catch (e) {
    // Handle the case where input is not a valid integer
    print("Error: Invalid input. Please enter a whole number.");
    return; // Exit the program
  }

  // 4. Validate Grade Range (0-100)
  if (grade < 0 || grade > 100) {
    print("Error: Grade must be between 0 and 100.");
    return; // Exit the program if grade is out of range
  }

  // 5. Classify the Grade using if-else if-else
  String letterGrade;

  if (grade >= 90) {
    letterGrade = 'A';
  } else if (grade >= 80) { // Implicitly < 90 because the first 'if' was false
    letterGrade = 'B';
  } else if (grade >= 70) { // Implicitly < 80
    letterGrade = 'C';
  } else if (grade >= 60) { // Implicitly < 70
    letterGrade = 'D';
  } else { // Implicitly < 60 and >= 0 (due to range check)
    letterGrade = 'F';
  }

  // 6. Print the Result
  print("The corresponding letter grade is: $letterGrade");
}
```

**Explanation:**

1.  **Import `dart:io`:** This line imports the necessary library to interact with standard input/output (like reading from the console).
2.  **Prompt User:** `print()` displays a message asking the user for the grade.
3.  **Read Input:** `stdin.readLineSync()` reads the line typed by the user. It returns a `String?` (a string that could potentially be `null`).
4.  **Input Validation (Null/Empty):** Checks if the input string is `null` or empty and prints an error if it is.
5.  **Parsing and Format Validation:**
    *   A `try-catch` block is used to handle potential errors during parsing.
    *   `int.parse(input)` attempts to convert the input `String` into an `int`.
    *   If the input cannot be parsed into an integer (e.g., the user typed "abc"), a `FormatException` is caught, an error message is printed, and the program exits.
6.  **Range Validation:** Checks if the successfully parsed `grade` is within the valid 0-100 range. If not, an error is printed, and the program exits.
7.  **Grade Classification:**
    *   An `if-else if-else` chain checks the grade against the defined ranges.
    *   It starts from the highest grade ('A'). If a condition is met (e.g., `grade >= 90`), the corresponding `letterGrade` is assigned, and the rest of the `else if`/`else` blocks are skipped.
    *   If a condition is false, it proceeds to the next `else if`.
    *   The final `else` catches any grade that didn't meet the previous conditions (i.e., less than 60).
8.  **Print Output:** Finally, the program prints the calculated `letterGrade` to the console using string interpolation (`$letterGrade`).