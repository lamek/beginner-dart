---
date: 2025-04-05
title: Problem 4: Basic Arithmetic Operations
category: curated
difficulty: beginner
concepts: arithmetic operators (+, -, *, /), variables (int, double), print
---

# Problem 4: Performing Basic Calculations

Now that you know how to declare variables, let's use them to perform some basic math! Dart supports standard arithmetic operations just like a calculator.

## Understanding Arithmetic Operators

Dart uses common symbols for mathematical calculations:

*   **`+`** : Addition (e.g., `5 + 3` results in `8`)
*   **`-`** : Subtraction (e.g., `10 - 4` results in `6`)
*   **`*`** : Multiplication (e.g., `6 * 2` results in `12`)
*   **`/`** : Division (e.g., `10 / 2` results in `5.0`). **Important:** In Dart, the `/` operator *always* results in a `double` (a number that can have a decimal part), even if the division results in a whole number.

You can perform these operations directly with numbers or use variables that hold numeric values.

## The Exercise

**Task:**

Write a Dart program that does the following:

1.  Declare two integer variables, `num1` and `num2`, and assign them the values `15` and `4`, respectively.
2.  Calculate the **sum** of `num1` and `num2` and store the result in a variable called `sum`.
3.  Calculate the **difference** between `num1` and `num2` (i.e., `num1` minus `num2`) and store the result in a variable called `difference`.
4.  Calculate the **product** of `num1` and `num2` and store the result in a variable called `product`.
5.  Calculate the **quotient** when `num1` is divided by `num2` and store the result in a variable called `quotient`. Remember what type of number division produces!
6.  Print the results to the console, each on a new line, with a descriptive label.

**Example Output:**

```
Sum: 19
Difference: 11
Product: 60
Quotient: 3.75
```

## Ready to Code?

Create a new Dart file (e.g., `arithmetic_operations.dart`) and implement the logic.

Or, use the DartPad. Copy in this boilerplate code and complete the calculations and printing:

```dart
void main() {
  // 1. Declare num1 and num2
  int num1 = 15;
  int num2 = 4;

  // 2. Calculate sum
  // int sum = ... ;

  // 3. Calculate difference
  // int difference = ... ;

  // 4. Calculate product
  // int product = ... ;

  // 5. Calculate quotient (Think about the data type!)
  // double quotient = ... ;

  // 6. Print the results
  // print("Sum: ...");
  // print("Difference: ...");
  // print("Product: ...");
  // print("Quotient: ...");
}
```

## Need Some Hints?

*   Use the `+`, `-`, `*`, and `/` operators.
*   Remember to declare variables using appropriate data types (`int` or `double`) to store the results before printing.
*   The `print()` function can display text and variable values. You can combine them using string interpolation: `print("Label: $variableName");` or `print("Label: ${expression}");`.
*   Pay attention to the data type returned by the division operator (`/`).

## Solution

[View the Solution](curated-solutions/cur-problem-04-solution.md)

## Further Practice

Master arithmetic with these extra challenges:

### More Exercises:

*   **Easy:** Declare two `double` variables representing the price of an item and a discount percentage (e.g., 29.99 and 10.0 for 10%). Calculate and print the final price after applying the discount. (Final Price = Original Price * (1 - Discount/100)).
*   **Medium:** Write a program that calculates the area of a rectangle. Define `width` and `height` variables (use `int` or `double`). Calculate the area (`width * height`) and the perimeter (`2 * (width + height)`). Print both results.
*   **Harder:** Explore the integer division operator (`~/`) and the modulo operator (`%`). Declare two integers, `a` and `b`. Print the result of `a ~/ b` (how many times `b` fits completely into `a`) and `a % b` (the remainder after integer division). For example, with `a = 17` and `b = 5`, `a ~/ b` is `3` and `a % b` is `2`.

### Explore More Problems:

You can find more problems related to operators in the [Operators category](../categories/operators.md).