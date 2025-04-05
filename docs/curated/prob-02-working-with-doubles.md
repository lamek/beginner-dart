---
date: 2025-04-05
title: Problem 2 - Working with Doubles and Basic Math
category: curated
difficulty: beginner
concepts: variables, data types (double, var), arithmetic operators, print
---

# Problem 2: Working with Doubles and Basic Math

Now that you've worked with whole numbers (`int`) and text (`String`), let's explore numbers with decimal points using the `double` data type. We'll also practice basic arithmetic operations.

## Understanding Doubles

In Dart, the **`double`** data type is used to represent floating-point numbers, which are numbers that can have a fractional part (a decimal point).

*   **`double`**: Used for numbers like `3.14`, `-0.5`, `10.0`. Note that even whole numbers written with a decimal point (like `10.0`) are treated as doubles.
*   **`var`**: Just like with `int` and `String`, you can use `var`, and Dart will infer the type as `double` if you assign a number with a decimal point (e.g., `var pi = 3.14;`).

You can perform standard arithmetic operations (addition `+`, subtraction `-`, multiplication `*`, division `/`) with doubles, just like with integers.

## The Exercise: Simple Temperature Conversion

**Task:**

Write a Dart program that converts a temperature from Celsius to Fahrenheit.

1.  Declare a `double` variable named `celsius` and assign it a value, for example, `25.0`.
2.  Calculate the corresponding Fahrenheit temperature using the formula: **Fahrenheit = (Celsius * 9 / 5) + 32**.
    *   *Hint:* To ensure you're doing floating-point division, you can write `9 / 5` or more explicitly `9.0 / 5.0`, or simply use the decimal equivalent `1.8`. Using `1.8` is often simplest: **Fahrenheit = (Celsius * 1.8) + 32**.
3.  Store the calculated result in a `double` variable named `fahrenheit`.
4.  Print a message to the console displaying both the original Celsius temperature and the calculated Fahrenheit temperature.

**Example Output (if `celsius` is 25.0):**

```
25.0 degrees Celsius is equal to 77.0 degrees Fahrenheit.
```

## Ready to Code?

Create a new Dart file (e.g., `temperature_converter.dart`) and write your solution.

Or, use DartPad. Copy this boilerplate code and fill in the logic:

```dart
void main() {
  // 1. Declare the celsius variable (use double)
  double celsius = 25.0; // You can change this value to test

  // 2. Calculate fahrenheit using the formula
  double fahrenheit; // Declare the variable first
  // Add your calculation here to assign a value to fahrenheit

  // 3. Print the result
  // Use print() to display the output string
}
```

## Need Some Hints?

*   Remember the syntax for declaring a double: `double variableName = value;`
*   Use the arithmetic operators `*` (multiplication) and `+` (addition).
*   Make sure you follow the order of operations (multiplication before addition) or use parentheses `()` if needed (though not strictly required for this specific formula's standard form).
*   To create the output string, you can use string interpolation: `print("$variableName degrees Celsius...");` or string concatenation: `print(variableName.toString() + " degrees Celsius...");`. Interpolation is usually preferred.

## Solution

[View the Solution](curated-solutions/prob-02-solution.md)

## Further Practice

Want to practice more with `double` and calculations?

### More Exercises:

*   **Easy:** Modify the program to convert Fahrenheit back to Celsius. The formula is: **Celsius = (Fahrenheit - 32) / 1.8** (or **Celsius = (Fahrenheit - 32) * 5 / 9**).
*   **Medium:** Calculate the area of a circle. Declare a `double` for the radius (e.g., `5.0`). Calculate the area using the formula **Area = π * radius²** (where π is approximately `3.14159`). You can store `pi` in a `double` variable. Print the radius and the calculated area. (Area = `pi * radius * radius`)
*   **Harder:** Calculate the Body Mass Index (BMI). Create variables for `weightInKg` (e.g., `70.0`) and `heightInMeters` (e.g., `1.75`). The formula is **BMI = weightInKg / (heightInMeters * heightInMeters)**. Print the calculated BMI.

### Explore More Problems:

You can find more problems related to numbers and operations in the [Variables and Data Types category](../categories/variables.md).