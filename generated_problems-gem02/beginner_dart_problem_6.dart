Okay, here is a beginner Dart problem focused on arithmetic operators, presented as a simple calculator task, along with its solution.

---

**Problem Description: Simple Dart Calculator**

**Objective:**
Write a Dart program that acts as a basic calculator. The program should prompt the user to enter two numbers and then display the results of adding, subtracting, multiplying, and dividing these two numbers.

**Requirements:**

1.  Import the necessary `dart:io` library to handle console input/output.
2.  Prompt the user to enter the first number.
3.  Read the first number from the console input and store it (Hint: you'll need to parse the input string to a numeric type like `double`).
4.  Prompt the user to enter the second number.
5.  Read the second number from the console input and store it.
6.  Perform the following arithmetic operations using the two numbers:
    *   Addition (+)
    *   Subtraction (-)
    *   Multiplication (*)
    *   Division (/)
7.  Print the results of each operation clearly to the console. For example: `[Number 1] + [Number 2] = [Result]`.
8.  Include a check to prevent division by zero. If the second number is zero, print an appropriate message instead of attempting the division.

**Focus:**
This problem focuses on using basic Dart syntax, handling user input, type conversion (parsing), and applying arithmetic operators (`+`, `-`, `*`, `/`).

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Import the I/O library for console interaction

void main() {
  // 1. Prompt and get the first number
  stdout.write('Enter the first number: ');
  String? input1 = stdin.readLineSync(); // Read input as String? (nullable)
  // Parse the string input to a double.
  // Using '!' assumes the user will enter valid input.
  // In real apps, use double.tryParse for safer error handling.
  double number1 = double.parse(input1!);

  // 2. Prompt and get the second number
  stdout.write('Enter the second number: ');
  String? input2 = stdin.readLineSync();
  double number2 = double.parse(input2!);

  print('\n--- Calculating Results ---'); // Add a separator for clarity

  // 3. Perform Arithmetic Operations
  double sum = number1 + number2;
  double difference = number1 - number2;
  double product = number1 * number2;

  // 4. Print Results (Addition, Subtraction, Multiplication)
  print('$number1 + $number2 = $sum');
  print('$number1 - $number2 = $difference');
  print('$number1 * $number2 = $product');

  // 5. Perform Division with Zero Check
  if (number2 != 0) {
    double quotient = number1 / number2;
    print('$number1 / $number2 = $quotient');
  } else {
    // Handle division by zero
    print('$number1 / $number2 = Error: Cannot divide by zero.');
  }

  print('---------------------------');
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Includes the necessary library for interacting with standard input (keyboard) and standard output (console).
2.  **`stdout.write(...)`**: Prints text to the console *without* adding a newline character, making it suitable for prompts.
3.  **`stdin.readLineSync()`**: Reads a line of text entered by the user from the console. It returns a `String?` (a nullable String), meaning it might be null if there's an issue reading the line.
4.  **`double.parse(input!)`**: Converts the input `String` into a `double` (a number that can have decimal points). The `!` (null assertion operator) tells Dart that we are sure `input` won't be `null` here. For more robust code, `double.tryParse(input ?? '') ?? 0.0` could be used to handle potential nulls or invalid formats gracefully.
5.  **Arithmetic Operators (`+`, `-`, `*`, `/`)**: Used directly on the `double` variables to perform the calculations.
6.  **String Interpolation (`$...`)**: Used within the `print` statements to easily embed the values of variables into the output strings (e.g., `'$number1 + $number2 = $sum'`).
7.  **`if (number2 != 0)`**: A simple conditional check using the `!=` (not equal) comparison operator to prevent a runtime error if the user tries to divide by zero.