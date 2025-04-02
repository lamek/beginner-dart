Okay, here is a beginner Dart problem focusing on arithmetic operators, along with its solution.

---

**Problem Description**

**Title:** Simple Arithmetic Calculator

**Objective:** Write a Dart program that takes two numbers as input from the user and then calculates and displays the results of adding, subtracting, multiplying, and dividing them.

**Requirements:**

1.  **Prompt User:** Ask the user to enter the first number.
2.  **Read Input:** Read the first number entered by the user.
3.  **Prompt User:** Ask the user to enter the second number.
4.  **Read Input:** Read the second number entered by the user.
5.  **Convert Input:** Convert the input (which is initially read as text/String) into numerical types (like `double` to handle potential decimal results from division).
6.  **Perform Calculations:**
    *   Calculate the sum (`+`) of the two numbers.
    *   Calculate the difference (`-`) of the first number minus the second number.
    *   Calculate the product (`*`) of the two numbers.
    *   Calculate the quotient (`/`) of the first number divided by the second number.
7.  **Display Results:** Print the results of each operation clearly, showing the operation performed and the result (e.g., "10 + 5 = 15").

**Concepts Practiced:**

*   Basic Input/Output (`dart:io`)
*   Variable Declaration
*   Type Conversion (String to `double`)
*   Arithmetic Operators (`+`, `-`, `*`, `/`)
*   String Interpolation for Output Formatting

---

**Dart Solution**

```dart
import 'dart:io'; // Import the library needed for input/output operations

void main() {
  // --- 1 & 2: Get the first number ---
  stdout.write('Enter the first number: '); // Use stdout.write to keep cursor on the same line
  String? input1 = stdin.readLineSync(); // Read user input as a String (can be null)

  // --- 3 & 4: Get the second number ---
  stdout.write('Enter the second number: ');
  String? input2 = stdin.readLineSync(); // Read user input as a String (can be null)

  // --- 5: Convert Input Strings to Numbers ---
  // We use double.parse() to convert the String input to a double.
  // Using 'double' allows for decimal results, especially from division.
  // The '!' operator asserts that input1 and input2 are not null.
  // Note: This will cause an error if the user enters non-numeric text or just presses Enter.
  // A more robust solution would use try-catch for error handling.
  try {
    double number1 = double.parse(input1!);
    double number2 = double.parse(input2!);

    // --- 6: Perform Arithmetic Operations ---
    double sum = number1 + number2;
    double difference = number1 - number2;
    double product = number1 * number2;
    
    // Handle division by zero gracefully
    double? quotient; // Make quotient nullable
    if (number2 != 0) {
      quotient = number1 / number2;
    } 

    // --- 7: Display Results ---
    print('\n--- Calculation Results ---'); // Add a newline for better formatting
    print('$number1 + $number2 = $sum');
    print('$number1 - $number2 = $difference');
    print('$number1 * $number2 = $product');

    if (quotient != null) {
      print('$number1 / $number2 = $quotient');
    } else {
      print('$number1 / $number2 = Cannot divide by zero');
    }

  } catch (e) {
    // Basic error handling for invalid input
    print('\nError: Invalid input. Please enter valid numbers.');
  }
}
```

**Explanation:**

1.  **`import 'dart:io';`**: This line imports the necessary library for handling standard input (keyboard) and standard output (console).
2.  **`main()`**: The entry point of every Dart application.
3.  **`stdout.write(...)`**: Prints text to the console *without* automatically adding a newline character at the end. This is useful for prompts where you want the user's input to appear on the same line.
4.  **`stdin.readLineSync()`**: Reads a line of text typed by the user into the console until they press Enter. It returns the text as a `String?` (nullable String).
5.  **`double.parse(input!)`**: Converts the `String` read from the input into a `double` (a number that can have decimal points). The `!` (null assertion operator) tells Dart "I am sure this value is not null". *Caution*: If `readLineSync` returns `null` or if the string cannot be parsed into a number (e.g., user types "hello"), this will crash the program. The `try-catch` block is added to handle this potential error.
6.  **Arithmetic Operators**: The code uses `+`, `-`, `*`, and `/` to perform the calculations.
7.  **Division by Zero Check**: It explicitly checks if `number2` is zero before performing division to avoid errors or infinite results and provides a user-friendly message.
8.  **`print(...)`**: Prints text to the console, automatically adding a newline character at the end.
9.  **String Interpolation (`$...` or `${...}`)**: Used within the `print` statements to easily embed the values of variables directly into the output string.
10. **`try-catch`**: This block attempts to execute the code inside `try`. If an error occurs (like `FormatException` if `double.parse` fails), the code inside the `catch` block is executed instead of crashing the program.