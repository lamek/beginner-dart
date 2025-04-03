---
title: Factorial Calculator
category: Control Flow
difficulty: Beginner
focus:
  - int
  - BigInt
  - String?
  - Input/Output
  - Error Handling
  - Type Conversion
  - Conditional Statements (if)
  - Loops (for)
  - Arithmetic Operations
  - Null Safety
---

# Factorial Calculator

## Problem Description

Write a Dart program that calculates the factorial of a non-negative integer entered by the user.

**Background:**
The factorial of a non-negative integer *n*, denoted by *n*!, is the product of all positive integers less than or equal to *n*.
For example:
*   5! = 5 × 4 × 3 × 2 × 1 = 120
*   3! = 3 × 2 × 1 = 6
*   0! = 1 (by definition)

Factorials are not defined for negative numbers.

## Requirements

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

## Focus

This problem focuses on:

*   Importing libraries (`dart:io`).
*   Declaring variables (`String?`, `int?`, `BigInt`).
*   Using basic data types (`int`, `BigInt`, `String`).
*   Reading console input (`stdin.readLineSync`).
*   Writing console output (`stdout.write`, `print`).
*   Input validation and error handling (`if`, `try-catch`).
*   Type conversion (`int.parse`, `BigInt.from`).
*   Conditional logic (`if`).
*   Using `for` loops for iteration.
*   Performing arithmetic operations (`*`).
*   Understanding and using `BigInt` for large numbers.
*   Basic null safety checks.

## Boilerplate Code

```dart
import 'dart:io';

void main() {
  // 1. Prompt the user

  // 2. Read input

  // 3. Validate input (format check with try-catch)

  // 4. Validate input (non-negative check)

  // 5. Calculate Factorial using a for loop and BigInt

  // 6. Print the result

}
```