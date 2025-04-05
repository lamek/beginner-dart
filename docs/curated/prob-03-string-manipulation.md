---
date: 2025-04-07
title: Problem 3: Combining and Inspecting Strings
category: curated
difficulty: beginner
concepts: String, concatenation, length, variables
---

# Problem 3: Combining and Inspecting Strings

Now that you know how to declare variables, let's focus on one of the most common data types: `String`. Strings represent text, and often you'll need to combine them or find out basic information about them.

## Understanding String Manipulation

Working with text is fundamental in programming. Dart provides easy ways to manipulate `String` variables. Two common operations are:

*   **Concatenation:** Joining two or more strings together to form a new, longer string. The `+` operator is typically used for this.
*   **Basic Properties:** Strings have built-in properties that give you information about them. A very useful one is `length`, which tells you how many characters are in the string.

## The Exercise

**Task:**

Write a Dart program that performs the following steps:

1.  Declare two `String` variables:
    *   `firstName` and assign it the value "Ada".
    *   `lastName` and assign it the value "Lovelace".
2.  Declare a third `String` variable named `fullName`. Create its value by concatenating `firstName`, a space character (`" "`), and `lastName`.
3.  Declare an `int` variable named `nameLength` and assign it the length of the `fullName` string.
4.  Print the value of the `fullName` variable.
5.  On a new line, print a message indicating the length of the full name, formatted exactly like this: "Full name length: [length]". Replace `[length]` with the value of the `nameLength` variable.

**Example Output:**

```
Ada Lovelace
Full name length: 12
```

## Ready to Code?

Create a new Dart file (e.g., `string_manipulation.dart`) and write your solution. You can run your code using the Dart SDK.

Or, use the DartPad. Copy in this boilerplate code and fill in the missing parts:

```dart
void main() {
  // 1. Declare firstName and lastName variables

  // 2. Concatenate to create the fullName variable

  // 3. Get the length of the fullName

  // 4. Print the fullName

  // 5. Print the formatted length message
}
```

## Need Some Hints?

*   Remember the `print()` function for output.
*   Use the `+` operator to join strings. Don't forget to include a space `" "` between the first and last names!
*   You can access the length of a string variable `myString` using `myString.length`.
*   To include a number within a string for printing, you might need string interpolation (`"My message: $variableName"`) or concatenate it after converting the number to a string (`"My message: " + variableName.toString()`). String interpolation is often cleaner.

## Solution

[View the Solution](curated-solutions/cur-problem-03-solution.md)

## Further Practice

Ready to practice strings more?

### More Exercises:

*   **Easy:** Create variables for a city and a country. Combine them into a single string like "City, Country" and print it.
*   **Medium:** Create a string variable. Print the string in all uppercase letters and then in all lowercase letters. (Hint: Look for `toUpperCase()` and `toLowerCase()` methods).
*   **Harder:** Declare a string variable with a sentence. Check if the sentence is empty using the `isEmpty` property and print the result (true or false). Then, check if the sentence contains the word "Dart" using the `.contains()` method and print that result.

### Explore More Problems:

You can find more problems related to strings in the [Strings category](../categories/strings.md).