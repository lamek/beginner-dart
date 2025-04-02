Okay, here is a beginner Dart problem focused on control flow, specifically calculating a factorial using a `for` loop, along with its solution.

---

**Problem Description: Factorial Calculator**

**Objective:**
Write a Dart program that calculates the factorial of a non-negative integer provided by the user.

**Requirements:**

1.  **Get Input:** Prompt the user to enter a non-negative integer.
2.  **Input Handling:** Read the integer entered by the user. You should handle potential invalid input (e.g., non-numeric text) gracefully. Also, handle the cases for 0 and negative numbers. Factorials are typically not defined for negative numbers in this context.
3.  **Calculate Factorial:**
    *   If the number is 0, the factorial is 1.
    *   If the number is positive, use a `for` loop to calculate the factorial. Remember, the factorial of a non-negative integer 'n' (denoted by n!) is the product of all positive integers less than or equal to n (e.g., 5! = 5 * 4 * 3 * 2 * 1 = 120).
    *   Since factorials can grow very large quickly, use the `BigInt` type for your factorial calculation to avoid integer overflow.
4.  **Output:** Print the calculated factorial to the console in a user-friendly format (e.g., "The factorial of 5 is 120"). If the user enters a negative number or invalid input, print an appropriate error message.

**Control Flow Elements to Use:**
*   `if-else if-else` statements (for input validation and handling the base case of 0).
*   A `for` loop (for the main calculation).

---

**Dart Solution Code:**

```dart
import 'dart:io'; // Required for reading user input (stdin)

void main() {
  // 1. Prompt user for input
  print('--- Factorial Calculator ---');
  print('Enter a non-negative integer:');
  String? input = stdin.readLineSync(); // Read line from console

  // 2. Validate and Parse Input
  if (input == null) {
    print('Error: No input provided.');
    return; // Exit if input is null
  }

  int? number = int.tryParse(input); // Safely try to convert String to int

  if (number == null) {
    // Handle non-integer input
    print('Error: Invalid input. Please enter a valid integer.');
  } else if (number < 0) {
    // Handle negative input
    print('Error: Factorial is not defined for negative numbers.');
  } else {
    // 3. Calculate Factorial using BigInt

    // Initialize factorialResult. Use BigInt for potentially large numbers.
    // BigInt.one is equivalent to BigInt.from(1)
    BigInt factorialResult = BigInt.one; 

    // Handle the base case: factorial of 0 is 1
    // If number is 0, the loop won't run, and result remains BigInt.one (correct).

    // Use a for loop for positive numbers
    // Start from 1 and multiply up to the number
    if (number > 0) { 
      for (int i = 1; i <= number; i++) {
        // Multiply the current result by the next integer (i)
        // We need to convert 'i' to BigInt for the multiplication
        factorialResult *= BigInt.from(i); 
      }
    }

    // 4. Print the result
    print('The factorial of $number is $factorialResult');
  }
}
```

---