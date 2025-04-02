Okay, here is a beginner Dart problem focused on using a `for` loop for control flow, along with its solution.

---

**Problem Description**

**Title:** Factorial Calculator

**Objective:** Write a Dart program that calculates the factorial of a non-negative integer provided by the user.

**Details:**
1.  Prompt the user to enter a non-negative integer.
2.  Read the integer input from the console.
3.  Use a `for` loop to calculate the factorial of the entered number.
    *   Remember: The factorial of a non-negative integer `n`, denoted by `n!`, is the product of all positive integers less than or equal to `n`.
    *   Factorial of 0 (0!) is defined as 1.
    *   Example: 5! = 5 * 4 * 3 * 2 * 1 = 120.
4.  Print the calculated factorial to the console in a user-friendly format (e.g., "The factorial of 5 is 120.").
5.  Handle the edge case where the input is 0.

**Constraint:** Focus on using a `for` loop for the core calculation logic for positive integers. You might need an `if` statement to handle the 0! case separately or structure your loop appropriately.

---

**Solution**

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Prompt the user
  stdout.write('Enter a non-negative integer: ');

  // 2. Read the input
  String? inputString = stdin.readLineSync();

  // Basic input validation (check if null or empty)
  if (inputString == null || inputString.isEmpty) {
    print('No input received. Exiting.');
    return; // Exit the program
  }

  // Try to parse the input string to an integer
  try {
    int number = int.parse(inputString);

    // Check if the number is non-negative
    if (number < 0) {
      print('Factorial is not defined for negative numbers.');
    } else {
      // Initialize the factorial result. Use BigInt for larger numbers
      // as factorials grow very quickly and can exceed standard int limits.
      BigInt factorialResult = BigInt.one; // BigInt.one represents 1

      // 3. Calculate factorial using a for loop
      // Handle 0! = 1 (already initialized) and calculate for n > 0
      if (number > 0) {
        // Loop from 1 up to the number (inclusive)
        for (int i = 1; i <= number; i++) {
          // Multiply the current result by the loop counter
          // Convert 'i' to BigInt for multiplication
          factorialResult = factorialResult * BigInt.from(i);
        }
      }
      // For number = 0, the loop is skipped, and factorialResult remains BigInt.one (which is correct)

      // 4. Print the result
      print('The factorial of $number is $factorialResult.');
    }
  } on FormatException {
    // Handle cases where the input is not a valid integer
    print('Invalid input. Please enter an integer.');
  } catch (e) {
    // Handle other potential errors
    print('An error occurred: $e');
  }
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Imports the necessary library for console input/output.
2.  **`stdout.write(...)`**: Displays a prompt to the user without adding a newline character.
3.  **`stdin.readLineSync()`**: Reads the line of text entered by the user. It returns a `String?` (String or null).
4.  **Input Validation**: Checks if the input is `null` or empty.
5.  **`try...catch`**: Used to handle potential errors during the conversion of the input string to an integer using `int.parse()`. If the user enters non-numeric text, a `FormatException` occurs.
6.  **Negative Number Check**: An `if` statement checks if the parsed number is negative, printing an appropriate message.
7.  **`BigInt factorialResult = BigInt.one;`**: Initializes the variable to store the factorial. `BigInt` is used because factorials grow very rapidly and can easily exceed the maximum value of a standard `int`. `BigInt.one` is the `BigInt` representation of 1.
8.  **`if (number > 0)`**: This condition ensures the loop only runs for positive integers.
9.  **`for (int i = 1; i <= number; i++)`**: The `for` loop starts `i` at 1 and continues as long as `i` is less than or equal to `number`. In each iteration, `i` is incremented by 1.
10. **`factorialResult = factorialResult * BigInt.from(i);`**: Inside the loop, the current `factorialResult` is multiplied by the current value of `i` (converted to `BigInt`). This cumulatively calculates the factorial.
11. **`print(...)`**: Displays the final calculated factorial to the user.
12. **Handling 0!**: If the input `number` is 0, the `if (number > 0)` condition is false, the `for` loop is skipped, and the initial value of `factorialResult` (which is `BigInt.one`) is printed, correctly representing 0! = 1.