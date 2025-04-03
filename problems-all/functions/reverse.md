---
title: String Reverser Function
category: Functions
difficulty: Beginner
focus:
  - Function Definition
  - Parameters
  - Return Values
  - String Manipulation (`split`, `reversed`, `join`)
  - List
---

# String Reverser Function

## Problem Description

Write a Dart function that takes a single string as input and returns that string reversed.

## Requirements

1.  **Define a function:** Create a function named `reverseString`.
2.  **Parameter:** The function must accept one parameter of type `String`.
3.  **Return Value:** The function must return a value of type `String`, which is the reversed version of the input string.
4.  **Call the function:** In your `main` function, call `reverseString` with a sample string (e.g., "hello" or "Dart").
5.  **Print the result:** Print the string returned by the `reverseString` function to the console.

## Example

If you call the function with the input "world", it should return "dlrow".

## Focus

This problem focuses on:

*   Defining functions with parameters and return types (`String functionName(String parameter)`).
*   Understanding how to pass arguments to functions.
*   Understanding how to receive and use return values from functions.
*   Using built-in `String` methods (`split('')`).
*   Using built-in `List` properties/methods (`reversed`, `toList()`, `join('')`).
*   Basic program flow within the `main` function.

## Boilerplate Code

```dart
// TODO: Define the reverseString function here
// It should take one String argument and return a String.
/*
String reverseString(String inputString) {
  // ... implementation goes here ...
}
*/

void main() {
  String myString = "Hello Dart";
  String reversed;

  // 1. Call the reverseString function with myString
  //    and store the result in the 'reversed' variable.
  // reversed = reverseString(myString); // Uncomment and complete this line

  // 2. Print the original and reversed strings
  print("Original: $myString");
  // print("Reversed: $reversed"); // Uncomment this line

  // Add more test cases if you like:
  // print("Reversing 'world': ${reverseString('world')}");
  // print("Reversing 'level': ${reverseString('level')}");
}

```