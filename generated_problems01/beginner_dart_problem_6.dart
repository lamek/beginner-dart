Okay, here is a beginner Dart problem focused on operators, along with its solution.

---

**Problem Description: Simple Dart Calculator**

**Goal:** Write a Dart program that acts as a simple command-line calculator.

**Requirements:**

1.  **Get Input:**
    *   Prompt the user to enter the first number.
    *   Prompt the user to enter the second number.
    *   Prompt the user to enter an arithmetic operator (`+`, `-`, `*`, `/`).
2.  **Perform Calculation:**
    *   Based on the operator entered by the user, perform the corresponding arithmetic operation (addition, subtraction, multiplication, or division) on the two numbers.
    *   Use comparison operators (`==`) to check which operator the user entered.
3.  **Handle Division by Zero:** If the user attempts to divide by zero, print an appropriate error message instead of crashing or performing the calculation.
4.  **Output Result:**
    *   Print the result of the calculation to the console in a user-friendly format (e.g., "Result: 5 + 3 = 8").
    *   If the operator entered is invalid (not one of `+`, `-`, `*`, `/`), print an error message.

**Example Interaction:**

```
Enter the first number: 10
Enter the second number: 5
Enter the operator (+, -, *, /): *
Result: 10.0 * 5.0 = 50.0
```

```
Enter the first number: 10
Enter the second number: 0
Enter the operator (+, -, *, /): /
Error: Cannot divide by zero.
```

```
Enter the first number: 7
Enter the second number: 2
Enter the operator (+, -, *, /): %
Error: Invalid operator entered.
```

---

**Dart Solution Code**

```dart
import 'dart:io'; // Import the dart:io library for input/output operations

void main() {
  // 1. Get Input

  // Prompt for and read the first number
  stdout.write('Enter the first number: ');
  // Read the line from console, assert it's not null (!), and parse it to a double
  // Note: For simplicity, we're not handling potential format errors if the user enters non-numeric text.
  double num1 = double.parse(stdin.readLineSync()!);

  // Prompt for and read the second number
  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Prompt for and read the operator
  stdout.write('Enter the operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  double result; // Variable to store the result of the calculation

  // 2. Perform Calculation & 4. Output Result/Errors

  // Use an if-else if-else structure to check the operator
  if (operator == '+') {
    result = num1 + num2; // Arithmetic operator: addition
    print('Result: $num1 + $num2 = $result');
  } else if (operator == '-') {
    result = num1 - num2; // Arithmetic operator: subtraction
    print('Result: $num1 - $num2 = $result');
  } else if (operator == '*') {
    result = num1 * num2; // Arithmetic operator: multiplication
    print('Result: $num1 * $num2 = $result');
  } else if (operator == '/') {
    // 3. Handle Division by Zero
    // Use a comparison operator (!=) to check if the divisor is not zero
    if (num2 != 0) {
      result = num1 / num2; // Arithmetic operator: division
      print('Result: $num1 / $num2 = $result');
    } else {
      // Print an error message if division by zero is attempted
      print('Error: Cannot divide by zero.');
    }
  } else {
    // Handle cases where the entered operator is not one of the valid ones
    print('Error: Invalid operator entered.');
  }
}
```

---