---
title: Basic String Analyzer
category: Variables and Data Types
difficulty: Beginner
focus:
  - String
  - int
  - bool
  - Input/Output (`stdin.readLineSync`, `stdout.write`, `print`)
  - String Methods (`.length`, `.toUpperCase()`, `.toLowerCase()`, `.contains()`)
  - Null Safety (`String?`, null checks)
  - String Interpolation
---

# Basic String Analyzer

## Problem Description

Write a Dart program that asks the user to enter a sentence or phrase, performs several basic analyses on it, and prints the results.

## Requirements

1.  **Get Input:** Prompt the user to enter a string using `stdout.write` and read their input using `stdin.readLineSync`. Store this input in a nullable `String?` variable initially, then handle potential null/empty input, storing the validated input in a non-nullable `String` variable.
2.  **Calculate Length:** Find the total number of characters in the input string using the `.length` property. Store this in an `int` variable.
3.  **Convert Case:**
    *   Convert the entire input string to uppercase using the `.toUpperCase()` method. Store this in a `String` variable.
    *   Convert the entire input string to lowercase using the `.toLowerCase()` method. Store this in a `String` variable.
4.  **Check for Substring:** Determine if the input string contains the substring "Dart" (case-insensitive) using the `.contains()` method after converting both the main string and the target substring to the same case (e.g., lowercase). Store the result (true or false) in a `bool` variable.
5.  **Print Results:** Display the following information clearly labelled using `print` and string interpolation:
    *   The original string entered by the user.
    *   The length of the string.
    *   The string in all uppercase letters.
    *   The string in all lowercase letters.
    *   Whether the string contains "Dart" (case-insensitive).

## Example Interaction

```
Please enter a sentence or phrase: Dart is fun to learn!

--- Analysis Results ---
Original String: Dart is fun to learn!
Length: 23
Uppercase: DART IS FUN TO LEARN!
Lowercase: dart is fun to learn!
Contains 'Dart' (case-insensitive)? true
```

## Focus

This problem focuses on:

*   Declaring variables (`String?`, `String`, `int`, `bool`).
*   Using basic data types (`String`, `int`, `bool`).
*   Reading console input (`stdin.readLineSync`) and writing prompts (`stdout.write`).
*   Basic null safety checks (`if (input == null || input.isEmpty)`).
*   Using common `String` methods (`.length`, `.toUpperCase()`, `.toLowerCase()`, `.contains()`).
*   Performing case-insensitive comparisons.
*   Printing formatted output to the console (`print`) using string interpolation.

## Boilerplate Code

```dart
import 'dart:io'; // Import the io library for input/output

// 1. Get Input

// 2. Calculate Length

// 3. Convert Case

// 4. Check for Substring

// 5. Print Results

```