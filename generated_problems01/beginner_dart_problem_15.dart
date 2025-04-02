Okay, here is a beginner Dart problem focused on control flow, specifically using a `for` loop to calculate a factorial, along with its solution.

---

**Problem Description: Factorial Calculator**

**Goal:** Write a Dart program that calculates the factorial of a non-negative integer entered by the user.

**Background:**
The factorial of a non-negative integer *n*, denoted by *n*!, is the product of all positive integers less than or equal to *n*.
For example:
*   5! = 5 × 4 × 3 × 2 × 1 = 120
*   3! = 3 × 2 × 1 = 6
*   0! = 1 (by definition)

Factorials are not defined for negative numbers.

**Requirements:**

1.  **Import necessary libraries:** You'll need `dart:io` for user input.
2.  **Prompt the user:** Ask the user to enter a non-negative integer.
3.  **Read input:** Read the number entered by the user.
4.  **Validate input:**
    *   Check if the input is a valid integer. If not, print an error message and exit.
    *   Check if the number is negative. If it is, print a message indicating that factorial is not defined for negative numbers and exit.
5.  **Calculate Factorial:**
    *   Use a `for` loop to calculate the factorial of the number.
    *   Remember the base case: 0! = 1.
    *   Consider using `BigInt` for the result, as factorials grow very quickly and can easily exceed the maximum value of a standard `int`.
6.  **Print the result:** Display the calculated factorial in a user-friendly format (e.g., "The factorial of 5 is 120.").

**Hint:** Initialize your result variable to 1 before starting the loop.

---

**Dart Solution**

```dart
import 'dart:io';

void main() {
  // 1. Prompt the user
  stdout.write('Enter a non-negative integer: ');

  // 2. Read input
  String? input = stdin.readLineSync();

  // 3. Validate input (presence and format)
  if (input == null) {
    print('No input received. Exiting.');
    return; // Exit the program
  }

  int? number;
  try {
    number = int.parse(input);
  } catch (e) {
    print('Invalid input. Please enter an integer.');
    return; // Exit the program
  }

  // 4. Validate input (non-negative)
  if (number < 0) {
    print('Factorial is not defined for negative numbers.');
    return; // Exit the program
  }

  // 5. Calculate Factorial using a for loop
  // Use BigInt because factorials grow very large quickly
  BigInt factorialResult = BigInt.one; // Initialize to 1 (handles 0! case too)

  // Loop from 1 up to the number (inclusive)
  // If number is 0, the loop won't run, and result remains 1 (correct)
  for (int i = 1; i <= number; i++) {
    // Multiply the current result by the loop counter
    // Convert 'i' to BigInt for the multiplication
    factorialResult = factorialResult * BigInt.from(i);
  }

  // 6. Print the result
  print('The factorial of $number is $factorialResult.');
}
```

**Explanation:**

1.  **`import 'dart:io';`**: Imports the necessary library for input/output operations like `stdout.write` and `stdin.readLineSync`.
2.  **`stdout.write(...)`**: Prints a message to the console without adding a newline, making it suitable for a prompt.
3.  **`stdin.readLineSync()`**: Reads a line of text entered by the user from the console. It returns a `String?` (String or null).
4.  **Input Validation (`if (input == null)` and `try-catch`)**: Checks if input was actually received and attempts to convert the string input to an integer using `int.parse()`. If parsing fails (e.g., user enters "abc"), a `FormatException` is caught, an error message is printed, and the program exits.
5.  **Negative Number Check (`if (number < 0)`)**: Checks if the successfully parsed number is negative. If so, it prints the appropriate message and exits.
6.  **`BigInt factorialResult = BigInt.one;`**: Initializes a variable `factorialResult` to hold the factorial. `BigInt` is used to prevent overflow errors for large factorials (standard `int` overflows after 20!). It's initialized to `BigInt.one` (which represents 1) because factorial involves multiplication, and the identity element for multiplication is 1. This also correctly handles the 0! = 1 case because the loop won't execute if `number` is 0.
7.  **`for (int i = 1; i <= number; i++) { ... }`**: This is the core `for` loop.
    *   `int i = 1`: Initializes a counter variable `i` to 1.
    *   `i <= number`: The loop continues as long as `i` is less than or equal to the user's number.
    *   `i++`: Increments `i` by 1 after each iteration.
8.  **`factorialResult = factorialResult * BigInt.from(i);`**: Inside the loop, the current `factorialResult` is multiplied by the current value of `i`. Since `i` is an `int` and `factorialResult` is a `BigInt`, we convert `i` to a `BigInt` using `BigInt.from(i)` before multiplying.
9.  **`print(...)`**: Finally, the program prints the original number and its calculated factorial using string interpolation.