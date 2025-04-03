---
title: Simple Discount Calculator
category: Operators
difficulty: Beginner
focus:
  - String
  - double
  - bool
  - Input/Output (stdin.readLineSync, stdout.write, print)
  - Type Conversion (double.parse, String to bool, toStringAsFixed)
  - Error Handling (try-catch, null checks)
  - Conditional Statements (if/else)
  - Arithmetic Operations
  - String Interpolation
  - String Methods (trim, toLowerCase)
---

# Simple Discount Calculator

## Problem Description

Write a Dart program that calculates the final price of a product after applying a potential discount based on user input.

## Requirements

1.  **Get Input:**
    *   Prompt the user to enter the original price of a product (this should be treated as a number, potentially with decimals).
    *   Ask the user if they have a discount code (expect a 'yes' or 'no' answer).
2.  **Process Input:**
    *   Convert the entered price string into a numeric type (`double`). Handle potential invalid input gracefully (use `tryParse` or `try-catch`). Ensure the price is not negative.
    *   Convert the 'yes'/'no' answer into a boolean value (`true` if they have a code, `false` otherwise). Make the check case-insensitive and handle potential leading/trailing whitespace.
3.  **Apply Discount Logic:**
    *   Use an `if` statement to check the boolean value representing the discount code.
    *   If the user *has* a discount code (`true`), apply a 10% discount to the original price. (Hint: Multiply the price by 0.90 or calculate 10% and subtract it).
    *   If the user *does not* have a discount code (`false`), the final price is the same as the original price.
4.  **Output:**
    *   Print the original price and the calculated final price to the console. Format the output clearly (e.g., "The final price is: $X.XX"). Format currency to two decimal places.

## Focus

This problem focuses on:

*   Declaring variables (`String?`, `double`, `bool`).
*   Using basic data types (`String`, `double`, `bool`).
*   Reading console input (`stdin.readLineSync`, `stdout.write`).
*   Type conversion (`double.parse`, String comparison for bool, `toStringAsFixed`).
*   Error handling (`try-catch`, null checks `??`, `?.`).
*   Conditional logic (`if`/`else`).
*   Performing arithmetic operations (`*`, `-`).
*   String manipulation (`trim`, `toLowerCase`).
*   Printing output to the console (`print`) using string interpolation.

## Boilerplate Code

```dart
import 'dart:io';

// 1. Get Input: Product Price
// ... prompt and read price ...

// 2. Process Input: Convert price string to double with error handling
// ... try-catch or tryParse ...
// ... check for negative price ...

// 3. Get Input: Discount Code Presence
// ... prompt and read discount answer ...

// 4. Process Input: Convert 'yes'/'no' to boolean
// ... handle null, trim, lowercase, compare ...

// 5. Apply Discount Logic
// ... initialize finalPrice ...
// ... use if/else based on boolean ...
// ... calculate discount if applicable ...

// 6. Output
// ... print original and final price, formatted ...

```
