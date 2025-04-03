---
title: Day of the Week Printer
category: Control Flow
difficulty: Beginner
focus:
  - String
  - int
  - Input/Output
  - Type Conversion
  - Control Flow (switch)
  - Null Safety
---

# Day of the Week Printer

## Problem Description

Write a Dart program that prompts the user to enter a number between 1 and 7, representing a day of the week (where 1 is Monday, 2 is Tuesday, ..., and 7 is Sunday).

The program should then use a `switch` statement to determine the corresponding day name based on the input number and print it to the console.

If the user enters a number outside the valid range (1-7) or enters non-numeric input, the program should print an appropriate error message.

## Requirements

1.  Import the `dart:io` library to handle user input.
2.  Prompt the user for input: Display a message asking for a number between 1 and 7.
3.  Read Input: Read the value entered by the user from the console.
4.  Handle Input & Convert: Attempt to parse the input string into an integer. Include error handling for null/empty input and non-numeric input.
5.  Use Switch Statement: Use a `switch` statement on the parsed integer to determine the day name.
    *   Include `case` statements for numbers 1 through 7.
    *   Include a `default` case to handle invalid numbers (outside 1-7).
6.  Print Output: Display the corresponding day name or an appropriate error message to the console.

## Focus

This problem focuses on:

*   Declaring variables (`String?`, `int?`, `String`).
*   Using basic data types (`String`, `int`).
*   Reading console input (`stdin.readLineSync`).
*   Type conversion (`int.tryParse`).
*   Basic null safety checks (`if (input == null)`, `if (dayNumber == null)`).
*   Using `switch`, `case`, `default`, and `break` for control flow.
*   Printing output to the console (`print`).

## Boilerplate Code

```dart
import 'dart:io';

void main() {
  // 1. Prompt User

  // 2. Read Input

  // 3. Handle Null/Empty Input

  // 4. Handle Input & Convert to integer

  // 5. Use Switch Statement

  // 6. Print Output
}
```