```markdown
---
title: Finding the Maximum of Three Numbers
category: Functions
difficulty: Beginner
focus:
  - Function Definition
  - Parameters (num type)
  - Return Values (num type)
  - Conditional Logic (if statements)
  - Variable Assignment
  - Calling Functions
  - Printing Output
---

# Finding the Maximum of Three Numbers

## Problem Description

**Goal:** Write a Dart program that finds the maximum of three given numbers using a function.

## Requirements

1.  **Create a function:** Define a function named `findMaximum`.
2.  **Parameters:** The function should accept three numbers (you can use the `num` type to allow both integers and doubles) as input parameters.
3.  **Return Value:** The function should determine which of the three input numbers is the largest and return that number.
4.  **Main Function:** In your `main` function:
    *   Define three number variables with sample values.
    *   Call the `findMaximum` function, passing your three numbers as arguments.
    *   Store the value returned by the function in a variable.
    *   Print the result to the console in a user-friendly format (e.g., "The maximum number is: [result]").

## Focus

This problem focuses on:

*   Defining functions (`findMaximum`).
*   Using parameters (`num a, num b, num c`).
*   Returning values from functions (`return maximum;`).
*   Using the `num` data type to handle both integers and doubles.
*   Implementing basic conditional logic (`if` statements) for comparison.
*   Calling a function from `main` and using its result.
*   Printing output using string interpolation.

## Solution Code

```dart
// Function definition: findMaximum
// Takes three numbers (a, b, c) as parameters.
// Returns the largest number among the three.
num findMaximum(num a, num b, num c) {
  // Assume the first number is the maximum initially
  num maximum = a;

  // Compare with the second number
  if (b > maximum) {
    maximum = b; // Update maximum if b is larger
  }

  // Compare with the third number
  if (c > maximum) {
    maximum = c; // Update maximum if c is larger
  }

  // Return the final maximum value found
  return maximum;
}

// Main function - the entry point of the program
void main() {
  // Define three sample numbers
  num number1 = 15;
  num number2 = 7;
  num number3 = 22;

  // Call the findMaximum function with the sample numbers
  num result = findMaximum(number1, number2, number3);

  // Print the original numbers and the result
  print("Comparing numbers: $number1, $number2, $number3");
  print("The maximum number is: $result"); // Output: The maximum number is: 22

  // Another example with different numbers (including a double)
  num numA = 10.5;
  num numB = 5;
  num numC = 10.4;

  num result2 = findMaximum(numA, numB, numC);
  print("\nComparing numbers: $numA, $numB, $numC");
  print("The maximum number is: $result2"); // Output: The maximum number is: 10.5
}
```

```