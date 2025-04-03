---
title: Simple Grade Calculator
category: Control Flow
difficulty: Beginner
focus:
  - String
  - double
  - Input/Output (stdin.readLineSync, print)
  - Type Conversion (double.tryParse)
  - Conditional Logic (if-else if-else)
  - Error Handling (null check, range check)
---

# Simple Grade Calculator

## Problem Description

Write a Dart program that asks the user to enter a numerical grade (0-100) and then prints the corresponding letter grade based on the following scale:

*   90-100: A
*   80-89: B
*   70-79: C
*   60-69: D
*   0-59: F

## Requirements

1.  Prompt the user to enter their numerical grade.
2.  Read the input from the user.
3.  Convert the input string to a number (e.g., a `double` or `int`).
4.  Use `if-else if-else` statements to determine the correct letter grade.
5.  Handle potential invalid input (e.g., non-numeric input, grades outside the 0-100 range) by printing an error message.
6.  Print the calculated letter grade or the error message.

## Focus

This problem focuses on:

*   Declaring variables (specifically `String?`, `double?`, `String`).
*   Using basic data types (`String`, `double`).
*   Reading console input (`stdin.readLineSync`).
*   Type conversion (`double.tryParse`).
*   Basic null safety checks (`if (input == null)`).
*   Using conditional logic (`if-else if-else`) for decision making.
*   Handling edge cases and invalid input (non-numeric, out-of-range).
*   Printing output to the console (`print`) using string interpolation.

## Boilerplate Code

```dart
import 'dart:io'; // Import the dart:io library for input/output

// 1. Prompt User

// 2. Read Input

// 3. Convert Input & Handle Errors (null, non-numeric, out-of-range)
// Check if input is null first
// Try converting to a double and handle potential errors
  // Handle non-numeric input
  // Handle out-of-range input
  // Input is valid, proceed with grading logic

  // 4. Determine Letter Grade using if-else if-else

  // 5. Print Result (Grade)

```