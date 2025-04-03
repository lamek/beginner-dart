---
title: Simple Dart Calculator
category: Operators
difficulty: Beginner
focus:
  - String
  - double
  - Input/Output
  - Arithmetic Operators
  - Comparison Operators
  - Control Flow (if-else)
---

# Simple Dart Calculator

## Problem Description

Write a Dart program that acts as a simple command-line calculator. It should take two numbers and an arithmetic operator from the user and perform the calculation.

## Requirements

1.  **Get Input:**
    *   Prompt the user to enter the first number.
    *   Prompt the user to enter the second number.
    *   Prompt the user to enter an arithmetic operator (`+`, `-`, `*`, `/`).
    *   Read these inputs from the console. Assume the user enters valid numbers, but handle the operator input.
2.  **Perform Calculation:**
    *   Based on the operator entered (`+`, `-`, `*`, `/`), perform the corresponding arithmetic operation on the two numbers.
    *   Use comparison operators (`==`) to determine which operation to perform.
3.  **Handle Division by Zero:**
    *   Specifically check if the operator is `/` and the second number is `0`.
    *   If division by zero is attempted, print an error message instead of performing the calculation. Use a comparison operator (`!=` or `==`) for this check.
4.  **Handle Invalid Operator:**
    *   If the operator entered by the user is not one of the four valid operators (`+`, `-`, `*`, `/`), print an appropriate error message.
5.  **Output Result:**
    *   If the calculation is successful, print the result to the console in a user-friendly format (e.g., "Result: 10.0 * 5.0 = 50.0").

## Focus

This problem focuses on:

*   Declaring variables (`String`, `double`).
*   Reading console input (`stdin.readLineSync`).
*   Basic type conversion (`double.parse` - noting that robust error handling for non-numeric input is omitted for simplicity here).
*   Using arithmetic operators (`+`, `-`, `*`, `/`).
*   Using comparison operators (`==`, `!=`) for decision making.
*   Using control flow structures (`if`, `else if`, `else`).
*   Handling specific error conditions (division by zero, invalid operator).
*   Printing output to the console (`print`) using string interpolation.

## Boilerplate Code

```dart
import 'dart:io';

void main() {
  // 1. Get Input
  // Prompt for and read the first number

  // Prompt for and read the second number

  // Prompt for and read the operator


  // 2. Perform Calculation & 3. Handle Division by Zero & 4. Handle Invalid Operator
  // TIP: Use if-else if-else structure to check the operator

  // 5. Output Result (or error messages within the if-else structure)

```