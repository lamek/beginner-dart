---
title: Simple Temperature Converter (Celsius to Fahrenheit)
category: Variables and Data Types
difficulty: Beginner
focus:
  - String
  - double
  - Input/Output
  - Arithmetic Operations
  - Type Conversion
  - Null Safety
---

# Simple Temperature Converter (Celsius to Fahrenheit)

## Problem Description

Write a Dart program that prompts the user to enter a temperature in Celsius and then converts it to Fahrenheit.

## Requirements

1.  **Prompt User:** Display a message asking the user to enter a temperature value in Celsius.
2.  **Read Input:** Read the value entered by the user from the console. Assume the user might enter a decimal value, so treat the input as potentially needing to be a `double`.
3.  **Handle Input:** Convert the user's input (which is initially a `String`) into a `double` data type. Include basic error handling in case the user enters non-numeric text.
4.  **Calculate:** Use the formula `F = (C * 9/5) + 32` to calculate the equivalent temperature in Fahrenheit. `C` is the temperature in Celsius (the `double` value you obtained) and `F` is the temperature in Fahrenheit.
5.  **Print Output:** Display the original Celsius temperature and the calculated Fahrenheit temperature to the console in a clear, user-friendly format (e.g., "XX.X degrees Celsius is equal to YY.Y degrees Fahrenheit.").

## Focus

This problem focuses on:

*   Declaring variables (specifically `String?`, `double?`, `double`).
*   Using basic data types (`String`, `double`).
*   Reading console input (`stdin.readLineSync`).
*   Type conversion (`double.tryParse`).
*   Basic null safety checks (`if (input == null)`).
*   Performing arithmetic operations.
*   Printing output to the console (`print`) using string interpolation.

## Boilerplate Code

```dart
import 'dart:io';

void main() {
  // 1. Prompt User
  // ...

  // 2. Read Input
  // ...

  // 3. Handle Input & Convert to double
  // ...

  // 4. Calculate Fahrenheit
  // ...

  // 5. Print Output
  // ...
}
```