Okay, here is a beginner Dart problem focused on operators, specifically implementing a simple calculator, along with its solution.

---

**Problem Description: Simple Dart Calculator**

**Goal:**
Write a Dart program that acts as a simple calculator.

**Requirements:**
1.  Prompt the user to enter two numbers.
2.  Read the two numbers entered by the user.
3.  Perform the following arithmetic operations on the two numbers:
    *   Addition (+)
    *   Subtraction (-)
    *   Multiplication (*)
    *   Division (/)
4.  Print the results of each operation in a clear and readable format.
5.  Assume the user will enter valid numbers. Handle potential division by zero by printing an informative message instead of crashing.

**Example Interaction:**

```
Enter the first number: 10
Enter the second number: 5
--- Results ---
10.0 + 5.0 = 15.0
10.0 - 5.0 = 5.0
10.0 * 5.0 = 50.0
10.0 / 5.0 = 2.0
```

**Example Interaction (Division by Zero):**

```
Enter the first number: 8
Enter the second number: 0
--- Results ---
8.0 + 0.0 = 8.0
8.0 - 0.0 = 8.0
8.0 * 0.0 = 0.0
8.0 / 0.0 = Error: Cannot divide by zero
```

**Hint:** You will need to use `dart:io` to read input from the console and functions like `double.parse()` to convert the input strings to numbers. Use the standard arithmetic operators (`+`, `-`, `*`, `/`).

---

**Dart Solution:**

```dart
import 'dart:io'; // Import the I/O library for console interaction

void main() {
  // 1. Prompt and Read the first number
  stdout.write("Enter the first number: "); // Display prompt without newline
  String? input1 = stdin.readLineSync(); // Read user input as a string (nullable)

  // 2. Prompt and Read the second number
  stdout.write("Enter the second number: ");
  String? input2 = stdin.readLineSync();

  // Check if inputs are not null (basic validation)
  if (input1 != null && input2 != null) {
    try {
      // Convert input strings to doubles (use double for division)
      double number1 = double.parse(input1);
      double number2 = double.parse(input2);

      // 3. Perform Arithmetic Operations
      double sum = number1 + number2;
      double difference = number1 - number2;
      double product = number1 * number2;
      // Division needs special handling for division by zero

      // 4. Print the results
      print("\n--- Results ---"); // Add a newline for separation
      print("$number1 + $number2 = $sum");
      print("$number1 - $number2 = $difference");
      print("$number1 * $number2 = $product");

      // Handle division by zero
      if (number2 != 0) {
        double quotient = number1 / number2;
        print("$number1 / $number2 = $quotient");
      } else {
        print("$number1 / $number2 = Error: Cannot divide by zero");
      }
    } catch (e) {
      // Handle cases where input cannot be parsed to a double
      print("Invalid input. Please enter valid numbers.");
    }
  } else {
    // Handle cases where input was null (e.g., user pressed Ctrl+D/Ctrl+Z)
    print("Input received was null. Exiting.");
  }
}
```

---