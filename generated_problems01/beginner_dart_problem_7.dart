Okay, here is a beginner Dart problem focusing on operators, specifically the modulo operator for checking even or odd numbers.

---

**Problem Description**

**Title:** Even or Odd Checker

**Goal:** Write a Dart program that asks the user to enter a whole number and then determines if that number is even or odd.

**Requirements:**

1.  **Prompt User:** Display a message asking the user to input an integer.
2.  **Read Input:** Read the number entered by the user from the console.
3.  **Convert Input:** Convert the input string to an integer data type. You should handle the case where the user might enter non-numeric input gracefully (e.g., using `int.tryParse`).
4.  **Check Even/Odd:** Use the modulo operator (`%`) to check if the number is divisible by 2.
    *   A number is **even** if the remainder when divided by 2 is 0 (`number % 2 == 0`).
    *   A number is **odd** otherwise.
5.  **Print Result:** Display a message indicating whether the entered number is even or odd. If the input was invalid, print an error message.

**Hint:** You'll need to import the `dart:io` library for console input/output.

---

**Solution Code**

```dart
import 'dart:io'; // Import the I/O library for console interaction

void main() {
  // 1. Prompt User
  stdout.write('Please enter a whole number: '); // Use stdout.write to keep cursor on the same line

  // 2. Read Input
  String? userInput = stdin.readLineSync(); // Read the line entered by the user

  // 3. Convert Input (with error checking)
  if (userInput != null) {
    int? number = int.tryParse(userInput); // Try to convert the string to an integer

    if (number != null) {
      // 4. Check Even/Odd using the modulo operator (%) and comparison operator (==)
      if (number % 2 == 0) {
        // 5. Print Result (Even)
        print('$number is an even number.');
      } else {
        // 5. Print Result (Odd)
        print('$number is an odd number.');
      }
    } else {
      // Handle invalid numeric input
      print('Invalid input. "$userInput" is not a valid whole number.');
    }
  } else {
    // Handle case where readLineSync returns null (less common for stdin)
    print('Failed to read input.');
  }
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Imports the necessary library for interacting with standard input (keyboard) and standard output (console).
2.  **`stdout.write(...)`**: Displays the prompt message to the user without adding a newline character at the end.
3.  **`stdin.readLineSync()`**: Reads the complete line of text entered by the user until they press Enter. It returns the input as a `String?` (nullable String).
4.  **`if (userInput != null)`**: Checks if `readLineSync` actually returned something (it usually does for console input, but it's good practice to check for null).
5.  **`int.tryParse(userInput)`**: Attempts to convert the `userInput` string into an integer. If successful, it returns the `int`; otherwise, it returns `null`. This is safer than `int.parse()` which would throw an error on invalid input.
6.  **`if (number != null)`**: Checks if the conversion was successful.
7.  **`if (number % 2 == 0)`**: This is the core logic.
    *   `number % 2`: Calculates the remainder when `number` is divided by 2.
    *   `== 0`: Compares the remainder to 0. If it's equal, the condition is true (the number is even).
8.  **`print(...)`**: Displays the final result to the user, indicating whether the number was even or odd, or if the input was invalid. String interpolation (`$number`) is used to include the value of the `number` variable directly within the output string.