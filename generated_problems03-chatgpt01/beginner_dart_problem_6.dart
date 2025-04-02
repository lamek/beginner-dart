Okay, here is a beginner Dart problem focused on operators, along with its solution.

---

### Problem Description: Simple Command-Line Calculator

**Objective:**
Create a command-line program in Dart that functions as a simple calculator. The program should ask the user to input two numbers and then ask for an arithmetic operation to perform on those numbers. Finally, it should compute and display the result.

**Requirements:**

1.  **Prompt for Input:**
    *   Ask the user to enter the first number.
    *   Ask the user to enter the second number.
    *   Ask the user to enter the desired operation symbol (`+`, `-`, `*`, `/`).
2.  **Read Input:** Read the two numbers and the operation symbol from the command line.
3.  **Data Types:** Assume the user will enter valid numbers (you can use `double` to handle decimals). The operation will be a `String`.
4.  **Perform Calculation:**
    *   Use an `if/else if/else` statement or a `switch` statement to determine which operation to perform based on the input symbol.
    *   Use Dart's arithmetic operators (`+`, `-`, `*`, `/`) to calculate the result.
5.  **Handle Division by Zero:** If the user chooses division (`/`) and the second number is zero, print an error message instead of performing the calculation.
6.  **Output:** Print the result of the calculation in a clear format, like `10 + 5 = 15`. If an invalid operation symbol is entered or division by zero occurs, print an appropriate error message.

**Concepts to Practice:**

*   Reading user input (`stdin.readLineSync()`)
*   Type conversion (e.g., `double.parse()`)
*   Arithmetic operators (`+`, `-`, `*`, `/`)
*   Comparison operators (`==`)
*   Conditional statements (`if/else if/else` or `switch`)
*   String interpolation for output
*   Basic error handling (invalid operation, division by zero)

---

### Solution Code:

```dart
import 'dart:io'; // Import the dart:io library for input/output

void main() {
  // 1. Get the first number from the user
  stdout.write("Enter the first number: ");
  String? input1 = stdin.readLineSync();
  double num1;
  try {
    // Try to parse the input string to a double
    // Use the null assertion operator (!) assuming input won't be null here,
    // or add more robust null checking if needed.
    num1 = double.parse(input1!);
  } catch (e) {
    // Handle cases where input is not a valid number
    print("Invalid input for the first number. Please enter a number.");
    return; // Exit the program
  }

  // 2. Get the second number from the user
  stdout.write("Enter the second number: ");
  String? input2 = stdin.readLineSync();
  double num2;
  try {
    num2 = double.parse(input2!);
  } catch (e) {
    print("Invalid input for the second number. Please enter a number.");
    return; // Exit the program
  }

  // 3. Get the operation from the user
  stdout.write("Enter the operation (+, -, *, /): ");
  String? operation = stdin.readLineSync();

  // Check if operation input is null or empty
  if (operation == null || operation.isEmpty) {
      print("No operation entered. Exiting.");
      return;
  }

  // 4. Perform the calculation based on the operation
  double? result; // Use nullable double to handle cases where result isn't calculated
  bool validOperation = true;

  if (operation == '+') {
    result = num1 + num2;
  } else if (operation == '-') {
    result = num1 - num2;
  } else if (operation == '*') {
    result = num1 * num2;
  } else if (operation == '/') {
    // Specific check for division by zero
    if (num2 == 0) {
      print("Error: Cannot divide by zero.");
      validOperation = false; // Mark operation as invalid for output purposes
    } else {
      result = num1 / num2;
    }
  } else {
    // Handle invalid operation symbols
    print("Error: Invalid operation symbol '$operation'.");
    validOperation = false; // Mark operation as invalid
  }

  // 5. Print the result if the operation was valid and produced a result
  if (validOperation && result != null) {
    print("Result: $num1 $operation $num2 = $result");
  }
  // Error messages for division by zero or invalid operation are printed inside the if/else block
}
```