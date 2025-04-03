Okay, here is the "String Reverser Function" problem formatted using the provided template:

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

**Goal:** Write a Dart function that takes a single string as input and returns that string reversed.

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

## Solution Code (Optional Reference)

```dart
import 'dart:io'; // Not strictly needed for this specific solution, but good practice

// Function Definition:
// Takes a String 'inputString' as a parameter.
// Returns a reversed String.
String reverseString(String inputString) {
  // 1. Split the string into a list of characters.
  //    Example: "hello" -> ["h", "e", "l", "l", "o"]
  List<String> characters = inputString.split('');

  // 2. Reverse the list of characters.
  //    Example: ["h", "e", "l", "l", "o"] -> ["o", "l", "l", "e", "h"]
  List<String> reversedCharacters = characters.reversed.toList();

  // 3. Join the reversed list of characters back into a single string.
  //    Example: ["o", "l", "l", "e", "h"] -> "olleh"
  String reversedString = reversedCharacters.join('');

  // 4. Return the reversed string.
  return reversedString;

  // --- Alternative Shorter Syntax ---
  // You could achieve the same result in one line:
  // return inputString.split('').reversed.join('');
}

// Main function - the entry point of the program
void main() {
  // Define the string we want to reverse
  String originalString = "Dart Programming";

  // Call the reverseString function with our string
  String result = reverseString(originalString);

  // Print the original and the reversed strings
  print("Original String: $originalString");
  print("Reversed String: $result");

  // Example with another string
  String anotherString = "hello";
  print("\nOriginal String: $anotherString");
  print("Reversed String: ${reverseString(anotherString)}"); // Calling directly in print
}

```