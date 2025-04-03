---
title: Even or Odd Checker
category: Operators
difficulty: Beginner
focus:
  - String
  - int
  - Input/Output
  - Type Conversion
  - Conditional Statements
  - Operators
  - Null Safety
---

# Even or Odd Checker

## Problem Description

Write a Dart program that asks the user to enter a whole number and then determines if that number is even or odd.

## Requirements

1.  **Prompt User:** Display a message asking the user to input an integer.
2.  **Read Input:** Read the number entered by the user from the console.
3.  **Convert Input:** Convert the input string to an integer data type. You should handle the case where the user might enter non-numeric input gracefully (e.g., using `int.tryParse`).
4.  **Check Even/Odd:** Use the modulo operator (`%`) to check if the number is divisible by 2.
    *   A number is **even** if the remainder when divided by 2 is 0 (`number % 2 == 0`).
    *   A number is **odd** otherwise.
5.  **Print Result:** Display a message indicating whether the entered number is even or odd. If the input was invalid, print an error message.

## Focus

This problem focuses on:

*   Declaring variables (`String?`, `int?`).
*   Using basic data types (`String`, `int`).
*   Reading console input (`stdin.readLineSync`).
*   Type conversion (`int.tryParse`).
*   Basic null safety checks (`if (input != null)`, `if (number != null)`).
*   Using the modulo operator (`%`) for calculation.
*   Using comparison operators (`==`).
*   Using conditional statements (`if`/`else`).
*   Printing output to the console (`print`) using string interpolation.

## Boilerplate Code

```dart
import 'dart:io';

void main() {
  // 1. Prompt User

  // 2. Read Input

  // 3. Convert Input & Handle Errors

  // 4. Check Even/Odd (inside the valid number check)

  // 5. Print Result

```