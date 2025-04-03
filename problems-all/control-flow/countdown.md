---
title: Simple Countdown Timer
category: Control Flow
difficulty: Beginner
focus:
  - int
  - String
  - Input/Output
  - int.tryParse
  - while loop
  - Arithmetic Operations (decrement)
---

# Simple Countdown Timer

## Problem Description

Write a Dart program that asks the user for a positive integer and then counts down from that number to 0, printing each number on a new line using a `while` loop.

## Requirements

1.  **Get User Input:** Prompt the user to enter a starting number for the countdown.
2.  **Read Input:** Read the number entered by the user as a `String`.
3.  **Validate Input (Basic):** Use `int.tryParse` to convert the input string to an integer. Handle cases where the input is not a valid non-negative integer.
4.  **Use a `while` loop:** Implement the countdown logic using a `while` loop. The loop should continue as long as the current number is greater than or equal to 0.
5.  **Print Countdown:** Inside the loop, print the current number.
6.  **Decrement:** Decrease the number by 1 in each iteration of the loop.
7.  **Stop Condition:** Ensure the loop terminates correctly when the number becomes less than 0.
8.  **Output Messages:** Print informative messages like "Starting countdown..." before the loop and "Countdown finished!" after the loop.

## Focus

This problem focuses on:

*   Declaring variables (specifically `String?`, `int?`, `int`).
*   Using basic data types (`String`, `int`).
*   Reading console input (`stdin.readLineSync`).
*   Type conversion (`int.tryParse`).
*   Basic null safety and input validation (`if (input != null)`, `if (startNumber != null && startNumber >= 0)`).
*   Using a `while` loop for repetitive execution based on a condition.
*   Performing arithmetic operations (decrement `number--`).
*   Printing output to the console (`print`, `stdout.write`).


## Boilerplate Code

```dart
import 'dart:io';

// 1. Prompt User

// 2. Read Input

// 3. Validate Input & Convert to int

// 4. Use a while loop for countdown

// 5. Print Countdown Number
// ...

// 6. Decrement Number
// ...

```