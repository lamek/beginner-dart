Okay, here is a beginner Dart problem focusing on `if-else` control flow for grade classification, along with its solution.

---

**Problem Description**

**Title:** Student Grade Classifier

**Objective:** Write a Dart program that takes a numerical student grade (an integer between 0 and 100) as input and then classifies it into a letter grade (A, B, C, D, or F) based on the following standard scale:

*   90 - 100: A
*   80 - 89:  B
*   70 - 79:  C
*   60 - 69:  D
*   0 - 59:   F

**Requirements:**

1.  Prompt the user to enter a numerical grade.
2.  Read the input from the console.
3.  Convert the input string to an integer. You can assume the user enters a valid number for this basic exercise, but adding checks for valid numbers between 0 and 100 is good practice if you want an extra challenge.
4.  Use `if-else if-else` statements to determine the correct letter grade based on the scale provided.
5.  Print the calculated letter grade to the console.

**Example Interaction:**

```
Enter the student's grade (0-100): 85
The letter grade is: B
```

```
Enter the student's grade (0-100): 92
The letter grade is: A
```

```
Enter the student's grade (0-100): 55
The letter grade is: F
```

---

**Dart Solution**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Prompt the user for input
  stdout.write("Enter the student's grade (0-100): ");

  // 2. Read the input from the console
  String? input = stdin.readLineSync(); // Read line, can be null

  // 3. Convert input to integer and basic validation
  int? grade; // Use nullable int for safety
  if (input != null) {
    grade = int.tryParse(input); // Try to parse, returns null on failure
  }

  // Check if parsing failed or input was null
  if (grade == null) {
    print("Invalid input. Please enter a whole number.");
    return; // Exit the program if input is not a valid number
  }

  // Optional: Add validation for the 0-100 range
  if (grade < 0 || grade > 100) {
      print("Invalid grade. Please enter a grade between 0 and 100.");
      return; // Exit if grade is out of range
  }

  // 4. Use if-else if-else statements to classify the grade
  String letterGrade; // Variable to hold the result

  if (grade >= 90) {
    letterGrade = 'A';
  } else if (grade >= 80) { // If not >= 90, check if >= 80
    letterGrade = 'B';
  } else if (grade >= 70) { // If not >= 80, check if >= 70
    letterGrade = 'C';
  } else if (grade >= 60) { // If not >= 70, check if >= 60
    letterGrade = 'D';
  } else { // If none of the above (i.e., < 60)
    letterGrade = 'F';
  }

  // 5. Print the result
  print("The letter grade is: $letterGrade");
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Imports the necessary library for handling console input (`stdin`) and output (`stdout`).
2.  **`stdout.write(...)`**: Displays a message to the user without adding a newline, prompting them for input.
3.  **`stdin.readLineSync()`**: Reads the line of text entered by the user. It returns a `String?` (nullable string) because the user might not enter anything or there could be an issue reading input.
4.  **`int.tryParse(input)`**: Attempts to convert the input `String` into an `int`. If the conversion is successful, it returns the integer; otherwise, it returns `null`. This is safer than `int.parse()` which would throw an error on invalid input.
5.  **Input Validation**: The code checks if `grade` is `null` (meaning the input wasn't a valid integer) or if the grade is outside the acceptable 0-100 range. If either condition is true, it prints an error message and uses `return;` to stop the `main` function.
6.  **`if-else if-else` Chain**: This is the core logic.
    *   It first checks if the `grade` is 90 or higher. If true, `letterGrade` becomes 'A'.
    *   If the first condition is false, it proceeds to the `else if` and checks if the `grade` is 80 or higher.
    *   This continues down the chain until a condition is met.
    *   The final `else` block catches any grades that didn't meet the previous conditions (i.e., grades less than 60), assigning 'F'.
7.  **`print(...)`**: Displays the final calculated letter grade using string interpolation (`$letterGrade`).