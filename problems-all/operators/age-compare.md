---
title: Age Comparison Program
category: Operators
difficulty: Beginner
focus:
  - String
  - int
  - Input/Output
  - Comparison Operators
  - Conditional Statements (if-else)
  - Type Conversion
  - Error Handling (try-catch)
---

# Age Comparison Program

## Problem Description

Write a Dart program that asks the user for their age and the age of another person. The program should then compare the two ages using comparison operators (`>`, `<`, `==`) and print a message indicating who is older, or if they are the same age.

## Requirements

1.  Import the `dart:io` library to handle user input.
2.  Prompt the user to enter their age and read the input.
3.  Prompt the user to enter another person's age and read the input.
4.  Convert the input strings to integers. Include basic error handling in case the user enters non-numeric text.
5.  Use `if-else if-else` statements and comparison operators (`>`, `<`, `==`) to compare the two ages.
6.  Print one of the following messages based on the comparison:
    *   "You are older than the other person."
    *   "The other person is older than you."
    *   "You and the other person are the same age."

## Focus

This problem focuses on:

*   Declaring variables (`String?`, `int`).
*   Using basic data types (`String`, `int`).
*   Reading console input (`stdin.readLineSync`).
*   Type conversion (`int.parse`).
*   Basic null safety checks (using `!` or `?` appropriately, though the solution uses `!`).
*   Using comparison operators (`>`, `<`, `==`).
*   Using conditional statements (`if-else if-else`).
*   Basic error handling using `try-catch`.
*   Printing output to the console (`print`).

## Boilerplate Code

```dart
import 'dart:io';

void main() {
  // 1. Prompt for and read the user's age

  // 2. Prompt for and read the other person's age

  // 3. Handle Input & Convert to integer (use try-catch)

  // 4. Compare the ages using if-else if-else

  // 5. Print the appropriate message

```